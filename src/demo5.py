import os
from langchain_chroma import Chroma
from langchain_community.tools import TavilySearchResults
from langchain_core.documents import Document
from langchain_core.messages import HumanMessage
from langchain_core.prompts import ChatPromptTemplate
from langchain_core.runnables import RunnableLambda, RunnablePassthrough
from langchain_core.vectorstores import InMemoryVectorStore
from langchain_ollama import OllamaEmbeddings
from langchain_openai import ChatOpenAI, OpenAIEmbeddings
from langgraph.prebuilt import chat_agent_executor
from openai import vector_stores

os.environ["LANGCHAIN_TRACING_V2"] = "true"
os.environ["LANGCHAIN_PROJECT"] = "LangchainDemo"
os.environ["LANGCHAIN_API_KEY"] = "你自己的LangSmith的api-key"
os.environ["TAVILY_API_KEY"] = "你自己的tavily的api-key"

""""
这里使用Langgraph实现代理，这里使用的Tavily AI 
这里的例子是问城市的天气情况。
一般你直接问题大模型，大模型是不会直接告诉你，xx城市的天气
"""

# 1、创建模型
llm = ChatOpenAI(
    model="deepseek-chat",
    api_key="你自己的api-key",
    openai_api_base="https://api.deepseek.com"
)

# # 没有任何代理的情况下
# print(llm.invoke([HumanMessage(content='上海最近的天气?')]))

# langchain内置了一个工具，可以轻松使用Tavily搜索引擎作为工具
search = TavilySearchResults(max_results=2) # max_results 指返回2个结果
# print(search.invoke('上海最近的天气？'))

# 让模型绑定工具
tools = [search]
# llm_with_tools = llm.bind_tools(tools)

# 模型可以自己推理：是否需要调用工具去完成用户的答案
# response1 = llm_with_tools.invoke([HumanMessage(content='中国的首都是哪个城市？')])
# print(f'Model_Result_Content1: {response1.content}')
# print(f'Tools_Result_Content1: {response1.tool_calls}')
#
# response2 = llm_with_tools.invoke([HumanMessage(content='上海天气怎么样?')])
# print(f'Model_Result_Content2: {response2.content}')
# print(f'Tools_Result_Content2: {response2.tool_calls}')

# 创建代理
agent_executor = chat_agent_executor.create_tool_calling_executor(llm, tools)

response1 = agent_executor.invoke({'messages': [HumanMessage(content='中国的首都是哪个城市？')]})
print(response1['messages'])

response2 = agent_executor.invoke({'messages': [HumanMessage(content='上海天气怎么样？')]})
print(response2['messages'][2].content)

