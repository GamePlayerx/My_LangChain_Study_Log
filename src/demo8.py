import os

from langchain_community.agent_toolkits import SQLDatabaseToolkit
from langchain_community.utilities import SQLDatabase
from langchain_core.messages import SystemMessage, HumanMessage
from langchain_openai import ChatOpenAI, OpenAIEmbeddings
from langgraph.prebuilt import chat_agent_executor

os.environ["LANGCHAIN_TRACING_V2"] = "true"
os.environ["LANGCHAIN_PROJECT"] = "LangchainDemo"
os.environ["LANGCHAIN_API_KEY"] = "你自己的LangSmith的api-key"

# 创建模型
llm = ChatOpenAI(
    model="gpt-3.5-turbo",
    api_key="你自己的api-key",
    openai_api_base="https://www.dmxapi.cn/v1"
)

# sqlalchemy  初始化MYSQL数据库的连接
HOSTNAME = '127.0.0.1'
PORT = 3306
DATABASE = 'bootdo'
USERNAME = 'root'
PASSWORD = '1123581321'
# mysqlclient驱动URL
MYSQL_URL = 'mysql+mysqldb://{}:{}@{}:{}/{}?charset=utf8mb4'.format(USERNAME, PASSWORD, HOSTNAME, PORT, DATABASE)

db = SQLDatabase.from_uri(MYSQL_URL)

# 创建工具
toolkit = SQLDatabaseToolkit(db=db, llm=llm)
tools = toolkit.get_tools()

# 使用agent完成整个数据库的整合
# 提示模板
system_prompt = """
您是一个被设计用来与SQL数据库交互的代理。
给定一个输入问题，创建一个语法正确的SQL语句并执行，然后查看查询结果并返回答案。
除非用户指定了他们想要获得的示例的具体数量，否则始终将SQL查询限制为最多10个结果。
你可以按相关列对结果进行排序，以返回MYSQL数据库中最匹配的数据。
您可以使用与数据库交互的工具。在执行查询之前，你必须仔细检查。如果在执行查询时出现错误，请重写查询并重试。
不要对数据库做任何DML语句(插入，更新，删除等)。

首先，你应该查看数据库中的表，看看可以查询什么。
不要跳过这一步。
安徽查询最相关的表的模式。
"""
system_message = SystemMessage(content=system_prompt)

# 创建代理
agent_executor = chat_agent_executor.create_tool_calling_executor(llm, tools)

# resp = agent_executor.invoke({'messages': [HumanMessage(content='请问：用户表中有多少用户？')]})
resp = agent_executor.invoke({'messages': [HumanMessage(content='请问：哪个表中的数据最多？')]})

result = resp['messages']
print(result)
print(len(result))
print(result[len(result)-1])



























