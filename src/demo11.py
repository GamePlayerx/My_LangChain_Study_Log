import os

from langchain_core.prompts import ChatPromptTemplate, PromptTemplate, FewShotPromptTemplate
from langchain_openai import ChatOpenAI
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


# 创建数据模型
class Classification(BaseModel):
    """
    定义一个Pydantic的数据模型，未来需要根据该类型，完成文本的分类
    """
    # 文本的情感倾向， 预期为字符串类型
    sentiment: str = Field(
        ...,
        enum=["positive", "negative", "criticism", "praise"],
        description="文本的情感"
    )

    # 文本的攻击性， 预期为0到10的整数
    aggressiveness: int = Field(
        ...,
        enum=[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
        description="描述文本的攻击性，数字越大表示攻击性越大"
    )

    # 文本使用的语言， 预期为字符串类型
    language: str = Field(
        description="文本使用的语言"
    )

# 提示模板
tagging_prompt = ChatPromptTemplate.from_template(
    """
    从以下段落中提取所需信息。
    只提取'Classification'类中提到的属性。
    段落：
    {input}
    """
)

# 创建链
chain = tagging_prompt | llm.with_structured_output(Classification)

input_text = "华为的余大嘴，打着人人都买得起的口号，但是价格一点不便宜，就是打着爱国的口号，割韭菜，简直就是王八蛋！"
result = chain.invoke({'input': input_text})
print(result)









