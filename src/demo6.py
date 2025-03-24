import os

import bs4
from langchain.chains.combine_documents import create_stuff_documents_chain
from langchain.chains.history_aware_retriever import create_history_aware_retriever
from langchain.chains.retrieval import create_retrieval_chain
from langchain_chroma import Chroma
from langchain_community.document_loaders import WebBaseLoader
from langchain_community.chat_message_histories import ChatMessageHistory
from langchain_core.prompts import ChatPromptTemplate, MessagesPlaceholder
from langchain_core.runnables import RunnableWithMessageHistory
from langchain_ollama import OllamaEmbeddings
from langchain_openai import ChatOpenAI, OpenAIEmbeddings
from langchain_text_splitters import RecursiveCharacterTextSplitter

os.environ["LANGCHAIN_TRACING_V2"] = "true"
os.environ["LANGCHAIN_PROJECT"] = "LangchainDemo"
os.environ["LANGCHAIN_API_KEY"] = "你自己的LangSmith的api-key"

# 创建模型
llm = ChatOpenAI(
    model="deepseek-chat",
    api_key="你自己的api-key",
    openai_api_base="https://api.deepseek.com"
)

# 1、加载数据：一篇博客内容数据
loader = WebBaseLoader(
    web_paths=("https://lilianweng.github.io/posts/2023-06-23-agent/",),
    bs_kwargs=dict(
        parse_only=bs4.SoupStrainer(
            class_=("post-content", "post-title", "post-header")
        )
    ),
)
docs = loader.load()

# 2、大文本的切割
splitter = RecursiveCharacterTextSplitter(chunk_size=1000, chunk_overlap=200)
splits = splitter.split_documents(docs)

# 设置嵌入模型
# embeddings = OpenAIEmbeddings(model="text-embedding-3-small")
embeddings = OllamaEmbeddings(model="nomic-embed-text")
# embeddings = DeterministicFakeEmbedding(size=4096)
# embeddings = HuggingFaceHubEmbeddings(model_name="sentence-transformers/all-mpnet-base-v2")

# 3、存储
vector_stores = Chroma.from_documents(
    documents=splits,
    embedding=embeddings
)

# 4、检索器
retriever = vector_stores.as_retriever()

# 整合
# 提示模板
system_prompt = """
You are an assistant for question-answering tasks.
Use the following pieces of retrieved context to answer
the question. If you don`t know the answer, say that you
don`t know. Use three sentences maximum and keep the answer concise .\n

{context}
"""

prompt = ChatPromptTemplate.from_messages(
    [
        ("system", system_prompt),
        MessagesPlaceholder("chat_history"), # 提问和回答的历史记录
        ("human", "{input}"),
    ]
)

# 得到chain
chain1 = create_stuff_documents_chain(llm, prompt)

'''
一般情况下，我们构建的链（chain）直接使用输入问题记录来关联上下问。但在此案例中，查询检索器也需要对话上下文才能被理解

解决方法：
添加一个子链（chain），它采用最新用户提问和聊天历史，并在它引用历史信息中任何信息时重新表述问题。这可以被简单地认为是构建一个新的“历史感知”检索器。
这个子链的目的：让检索过程融入对话的上下文。
'''

# 子链的提示模板
contextualize_q_system_prompt = """
Given a chat history and th latest user question
which might reference context in the chat history,
formulate a standalone question which can be understood
without the chat history. Do NOT answer the question,
just reformulate it if needed and otherwise return it as is.
"""

retriever_history_temp = ChatPromptTemplate.from_messages(
    [
        ('system', contextualize_q_system_prompt),
        MessagesPlaceholder('chat_history'),
        ("human", "{input}"),
    ]
)

# 创建一个子链
history_chain = create_history_aware_retriever(llm, retriever, retriever_history_temp)

# 保持问答的历史记录
store = {}

def get_session_history(session_id: str):
    if session_id not in store:
        store[session_id] = ChatMessageHistory()
    return store[session_id]

# 创建父链chain: 把前两个链整合
chain = create_retrieval_chain(history_chain, chain1)

result_chain = RunnableWithMessageHistory(
    chain,
    get_session_history,
    input_messages_key='input',
    history_messages_key='chat_history',
    output_messages_key='answer',
)

# 第一轮对话
resp1 = result_chain.invoke(
    {'input': 'What is Task Decomposition?'},
    config={'configurable': {'session_id': 'qwer1234'}}
)

print("resp1 == ", resp1['answer'])

# 第二轮对话
resp2 = result_chain.invoke(
    {'input': 'What are common ways of doing it?'},
    config={'configurable': {'session_id': 'qwer1234'}}
)

print("resp2 == ", resp2['answer'])


