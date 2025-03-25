import os
from typing import Optional, List

from langchain_core.prompts import ChatPromptTemplate
from langchain_core.runnables import RunnablePassthrough
from langchain_ollama import OllamaEmbeddings
from langchain_openai import ChatOpenAI, OpenAIEmbeddings
from pydantic import BaseModel, Field

os.environ["LANGCHAIN_TRACING_V2"] = "true"
os.environ["LANGCHAIN_PROJECT"] = "LangchainDemo"
os.environ["LANGCHAIN_API_KEY"] = "你自己的LangSmith的api-key"

# 创建模型
llm = ChatOpenAI(
    model="gpt-3.5-turbo",
    api_key="你自己的api-key",
    openai_api_base="https://www.dmxapi.cn/v1"
)

# pydantic: 处理数据、验证数据、定义数据的格式、虚拟化和饭虚拟化、类型转换等等

# 定义一个数据
class Person(BaseModel):
    """关于一个人的数据模型"""

    name: Optional[str] = Field(
        default=None,
        description="用户的全名",
        examples=["张三", "李四"]
    )

    hair_color: Optional[str] = Field(
        default=None,
        description="头发颜色，如黑色、金色等",
        examples=["黑色", "棕色"]
    )

    height_in_meters: Optional[float] = Field(
        default=None,
        description="以米为单位的身高，范围 [0.3, 2.5]",
        examples=[1.75, 1.68],
        ge=0.3,  # 最小身高 0.3 米
        le=2.5  # 最大身高 2.5 米
    )

# 多个人提取
class ManyPerson(BaseModel):
    """
    数据模型类： 代表多个人
    """
    people: List[Person]



# 定义自定义提示以提供指令和任何其他上下文。
# 1、你可以在提示模板中添加实例提高提取质量
# 2、引入额外的参数以考虑上下文（例如，包括有关提取文本的文档的元数据）
prompt = ChatPromptTemplate.from_messages(
    [
        (
            "system",
            "你是一个专业的提取算法。只从为结构化文本中提取相关信息。如果你不知道要提取的属性的值，返回该属性的值为null。",
        ),
        ("human", "{text}"),
    ]
)

# 创建链  with_structured_output 模型的输出是一个结构化的数据
# chain = {'text': RunnablePassthrough()} | prompt | llm.with_structured_output(schema=Person)
chain = {'text': RunnablePassthrough()} | prompt | llm.with_structured_output(schema=ManyPerson)

# text = '黄浦江边上有哥女生走过来，她染了一头粉蓝色的头发，她和傍边的广告牌一样高1米7左右'
text = '黄浦江边上有个女生走过来，她染了一头粉蓝色的头发，她和傍边的广告牌一样高1米7左右，她的傍边是她的男朋友叫小明，比她高10厘米'
resp = chain.invoke(text)

print(resp)





























