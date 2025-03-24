import os
from operator import itemgetter

from langchain.chains.sql_database.query import create_sql_query_chain
from langchain_community.tools import QuerySQLDatabaseTool
from langchain_community.utilities import SQLDatabase
from langchain_core.output_parsers import StrOutputParser
from langchain_core.prompts import ChatPromptTemplate, MessagesPlaceholder, PromptTemplate
from langchain_core.runnables import RunnableWithMessageHistory, RunnablePassthrough
from langchain_openai import ChatOpenAI, OpenAIEmbeddings

os.environ["LANGCHAIN_TRACING_V2"] = "true"
os.environ["LANGCHAIN_PROJECT"] = "LangchainDemo"
os.environ["LANGCHAIN_API_KEY"] = "你自己的LangSmith的api-key"

"""
这个是使用langchain的链方式，连接MySQL数据库
用链的方式提问数据库的问题，并返回值
这里的数据库，可以用sql文件中的bootdo.sql文件
"""

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
PASSWORD = '你的mysql的密码'
# mysqlclient驱动URL
MYSQL_URL = 'mysql+mysqldb://{}:{}@{}:{}/{}?charset=utf8mb4'.format(USERNAME, PASSWORD, HOSTNAME, PORT, DATABASE)

db = SQLDatabase.from_uri(MYSQL_URL)

# 测试连接是否成功
# print(db.get_usable_table_names())
# print(db.run('select * from book limit 0, 10;'))

# # 直接使用大模型和数据库整合     只能根据你的问题生成sql语句
# test_chain = create_sql_query_chain(llm, db)
# resp = test_chain.invoke({'question': '请问：用户表中有多少用户？'})
# print("resp == ", resp)

# 定义模板
answer_prompt = PromptTemplate.from_template(
    """
    给定以下用户问题、SQL语句和SQL执行后的结果，回答用户问题。
    Question: {question}
    SQL Query: {query}
    SQL Result: {result}
    回答:
    """
)

# 创建生成sql的chain
create_sql_chain = create_sql_query_chain(llm, db)

# 创建一个执行sql语句的工具
execute_sql_tool = QuerySQLDatabaseTool(db=db)

# 创建链
chain = (
    RunnablePassthrough.assign(query=create_sql_chain).assign(result=itemgetter('query') | execute_sql_tool)  # 生成sql，执行sql
    | answer_prompt # 回答模板
    | llm
    | StrOutputParser()
)

response = chain.invoke(input = {'question': '请问：用户表中有多少用户？'})
print("response == ", response)





























