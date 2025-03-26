import os

from langchain.chains.combine_documents.map_reduce import MapReduceDocumentsChain
from langchain.chains.combine_documents.reduce import ReduceDocumentsChain
from langchain.chains.combine_documents.stuff import StuffDocumentsChain
from langchain.chains.llm import LLMChain
from langchain_community.document_loaders import WebBaseLoader
from langchain_core.prompts import PromptTemplate
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

# Map-Reduce方式，文本自动摘要

# 加载文档。 使用 WebBaseLoader 加载博客文章
loader = WebBaseLoader('https://lilianweng.github.io/posts/2023-06-23-agent')
docs = loader.load() # 得到整篇文章

# 切割阶段 每个小docs为1000个token
text_splitter = CharacterTextSplitter.from_tiktoken_encoder(chunk_size=1000, chunk_overlap=0)
split_docs = text_splitter.split_documents(docs)

# 第一步： Map阶段
# map的提示模板
map_template = """以下是一组文档(documents)
"{docs}"
根据这个文档列表，请给出总结摘要:
"""
map_prompt = PromptTemplate.from_template(map_template)
map_llm_chain = LLMChain(llm=model, prompt=map_prompt)

# 第二步： reduce阶段： (combine和最终的reduce)
# 提示模板
reduce_template = """以下是一组总结摘要:
{docs}
将这些内容提炼成一个最终的、同意的总结摘要:
"""
reduce_prompt = PromptTemplate.from_template(reduce_template)
reduce_llm_chain = LLMChain(llm=model, prompt=reduce_prompt)

'''
reduce的思路：
如果map之后文档的累计token数超过了 4000个，那么我们将递归地将文档以<=4000 个token的批次传递给我们的 StuffDocumentsChain
一旦这些批量摘要的累计大小小于 4000 个token，我们将它们全部传递给 StuffDocumentsChain 最后一次，以创建最终摘要总结
'''

# 定义一个combine的chain
combine_chain = StuffDocumentsChain(llm_chain=reduce_llm_chain, document_variable_name='docs')

reduce_chain = ReduceDocumentsChain(
    combine_documents_chain=combine_chain, # 这是最终调用的链
    collapse_documents_chain=combine_chain, # 中间的汇总的链
    token_max=4000, # 将文档分组的最大令牌数为4000， 默认是3000
)

# 第三步： 合并所有链
map_reduce_chain = MapReduceDocumentsChain(
    llm_chain=map_llm_chain,
    reduce_documents_chain=reduce_chain,
    document_variable_name='docs',
    return_intermediate_steps=False,
)

result = map_reduce_chain.invoke(split_docs)
print(result['output_text'])














