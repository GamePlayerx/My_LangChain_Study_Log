import os

from langchain_chroma import Chroma
from langchain_community.embeddings import ModelScopeEmbeddings
from langchain_core.documents import Document
from langchain_core.prompts import ChatPromptTemplate
from langchain_core.runnables import RunnableLambda, RunnablePassthrough
from langchain_core.vectorstores import InMemoryVectorStore
from langchain_ollama import OllamaEmbeddings
from langchain_openai import ChatOpenAI, OpenAIEmbeddings
from openai import vector_stores

os.environ["LANGCHAIN_TRACING_V2"] = "true"
os.environ["LANGCHAIN_PROJECT"] = "LangchainDemo"
os.environ["LANGCHAIN_API_KEY"] = "你自己的LangSmith的api-key"

# 1、创建模型
llm = ChatOpenAI(
    model="deepseek-chat",
    api_key="你自己的api-key",
    openai_api_base="https://api.deepseek.com"
)

# 准备数据，假设我们提供的文档数据如下：
documents = [
    Document(
        page_content="狗是伟大的伴侣，以其忠诚和友好而闻名。",
        metadata={"source": "哺乳动物宠物文档"},
    ),
    Document(
        page_content="猫是独立的宠物，通常喜欢自己的空间。",
        metadata={"source": "哺乳动物宠物文档"},
    ),
    Document(
        page_content="金鱼是初学者的流行宠物，需要相对简单的护理。",
        metadata={"source": "鱼类动物宠物文档"},
    ),
    Document(
        page_content="鹦鹉是聪明的鸟类，能够模仿人类的语言。",
        metadata={"source": "鸟类动物宠物文档"},
    ),
    Document(
        page_content="兔子是社交动物，需要足够的空间跳跃。",
        metadata={"source": "哺乳动物宠物文档"},
    ),
]

# 2. 初始化嵌入模型
# 这里我用的是ollama的嵌入模型，你自己的电脑需要安装ollama，并且执行 ollama run nomic-embed-text 下载嵌入模型
embeddings = OllamaEmbeddings(model="nomic-embed-text")
# embeddings = ModelScopeEmbeddings(model_id = 'iic/nlp_gte_sentence-embedding_chinese-base')
# embeddings = ModelScopeEmbeddings(model_id = 'iic/nlp_gte_sentence-embedding_chinese-large')
# embeddings = OpenAIEmbeddings(
#     model="text-embedding-3-small",
#     request_timeout=30,  # 增加超时时间
#     max_retries=3,       # 增加重试次数
# )

# 实例化一个向量数据库 pip install langchain_chroma
vector_store = Chroma.from_documents(
    documents,
    embeddings,
)

# # 检索器：bind(k=1) 返回相似度最高的第一个
retriever = RunnableLambda(vector_store.similarity_search).bind(k=1)

# 提示模板
message = """
使用提供的上下问仅回答这个问题：
{question}
上下文:
{context}
"""

prompt_temp = ChatPromptTemplate.from_messages([('human', message)])

# RunnablePassthrough运行我们将用户的问题之后再传递给prompt和moodel
chain = {
    'question': RunnablePassthrough(),
    'context': retriever
} | prompt_temp | llm

resp = chain.invoke('请介绍一下金鱼？')

print(resp.content)
