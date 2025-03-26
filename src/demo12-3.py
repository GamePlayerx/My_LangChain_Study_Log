import os

from langchain.chains.summarize import load_summarize_chain
from langchain_community.document_loaders import WebBaseLoader
from langchain_openai import ChatOpenAI
from langchain_text_splitters import CharacterTextSplitter

os.environ["LANGCHAIN_TRACING_V2"] = "true"
os.environ["LANGCHAIN_PROJECT"] = "LangchainDemo"
os.environ["LANGCHAIN_API_KEY"] = "你自己的LangSmith的api-key"

# 创建模型
model = ChatOpenAI(
    model="gpt-3.5-turbo",
    api_key="你自己的api-key",
    openai_api_base="https://www.dmxapi.cn/v1"
)

'''
Refine方式，文本自动摘要

Refine: refineDocumentsChain 类似于map-reduce:
细化文档链通过循环遍历输入文档并逐步更新其答案来构建响应。对于每个文档，它将当前文档和最新的中间答案传递给LLM链，以获得最新答案
'''
# 加载文档。 使用 WebBaseLoader 加载博客文章
loader = WebBaseLoader('https://lilianweng.github.io/posts/2023-06-23-agent')
docs = loader.load() # 得到整篇文章

# 切割阶段 每个小docs为1000个token
text_splitter = CharacterTextSplitter.from_tiktoken_encoder(chunk_size=1000, chunk_overlap=0)
split_docs = text_splitter.split_documents(docs)

# 指定chain_type为： refine
chain = load_summarize_chain(model, chain_type='refine')

result = chain.invoke(split_docs)
print(result['output_text'])











