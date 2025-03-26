import os

from langchain.chains.combine_documents.stuff import StuffDocumentsChain
from langchain.chains.llm import LLMChain
from langchain.chains.summarize import load_summarize_chain
from langchain_community.document_loaders import WebBaseLoader
from langchain_core.prompts import PromptTemplate
from langchain_openai import ChatOpenAI

os.environ["LANGCHAIN_TRACING_V2"] = "true"
os.environ["LANGCHAIN_PROJECT"] = "LangchainDemo"
os.environ["LANGCHAIN_API_KEY"] = "你自己的LangSmith的api-key"

# 创建模型
llm = ChatOpenAI(
    model="gpt-3.5-turbo",
    api_key="你自己的api-key",
    openai_api_base="https://www.dmxapi.cn/v1"
)

# Stuff方式，文本自动摘要

# 加载文档。 使用 WebBaseLoader 加载博客文章
loader = WebBaseLoader('https://lilianweng.github.io/posts/2023-06-23-agent')
docs = loader.load() # 得到整篇文章

# Stuff 第一种写法
chain1 = load_summarize_chain(llm, chain_type='stuff')

# result1 = chain1.invoke(docs)
# print(result1)
# print(result1['output_text'])

# Stuff 第二钟写法

# 定义提示
prompt_template = """针对下面的内容： 写一个简洁的总结摘要：
"{text}"
简洁的总结摘要:
"""
prompt = PromptTemplate.from_template(prompt_template)

llm_chain = LLMChain(llm=llm, prompt=prompt)

stuff_chain = StuffDocumentsChain(llm_chain=llm_chain, document_variable_name='text')

result = stuff_chain.invoke(docs)
print(result['output_text'])



