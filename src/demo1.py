import os

from langchain_core.messages import SystemMessage, HumanMessage
from langchain_core.output_parsers import StrOutputParser
from langchain_openai import ChatOpenAI

os.environ["LANGCHAIN_TRACING_V2"] = "true"
os.environ["LANGCHAIN_PROJECT"] = "LangchainRAGDemo"
os.environ["LANGCHAIN_API_KEY"] = "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"

# 1、创建模型
llm = ChatOpenAI(
    model="gpt-3.5-turbo",
    api_key="你自己的api-key",
    openai_api_base="https://www.dmxapi.cn/v1"
)

# 2、准备提示
msg = [
    SystemMessage(content='请将一下的内容翻译成德语'),
    HumanMessage(content="我的奋斗")
]

# 3、创建返回的数据解析器
parser = StrOutputParser()

# 4、得到链
chain = llm | parser

# 5、直接使用chain来调用
print(chain.invoke(msg))
