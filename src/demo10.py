import os
from typing import Optional, List

from langchain_core.prompts import ChatPromptTemplate, PromptTemplate, FewShotPromptTemplate
from langchain_core.runnables import RunnablePassthrough
from langchain_experimental.synthetic_data import create_data_generation_chain
from langchain_experimental.tabular_synthetic_data.openai import create_openai_data_generator
from langchain_experimental.tabular_synthetic_data.prompts import SYNTHETIC_FEW_SHOT_PREFIX, SYNTHETIC_FEW_SHOT_SUFFIX
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

# 生成一些结构化的数据： 5个步骤
# 1、定义数据模型
class MedicalBilling(BaseModel):
    patient_id: int # 患者ID， 整数类型
    patient_name: str # 患者姓名， 字符串类型
    diagnosis_code: str # 诊断代码， 字符串类型
    procedure_code: str # 程序代码， 字符串类型
    total_charge: float # 总费用， 浮点数类型
    insurance_claim_amount: float # 保险索赔金额， 浮点数类型

# 2、提供一些样例数据，给AI
examples = [
    {
        "example": "Patient ID: 123456, Patient Name: 王小明， Diagnosis Code: E11.9, Procedure Code: 99214, Total Charge: $500, Insurance Claim Amount: $6000 ",
    },
    {
        "example": "Patient ID: 3215786, Patient Name: 李白， Diagnosis Code: E45.2, Procedure Code: 56984, Total Charge: $200, Insurance Claim Amount: $0 ",
    },
    {
        "example": "Patient ID: 56389, Patient Name: 李晓峰， Diagnosis Code: E28.9, Procedure Code: 24714, Total Charge: $100, Insurance Claim Amount: $100 ",
    },
]

# 3、创建一个提示模板，用来指导AI生成符合规定的数据
openai_template = PromptTemplate(input_variables=['example'], template="{example}")

prompt_template = FewShotPromptTemplate(
    prefix=SYNTHETIC_FEW_SHOT_PREFIX,
    suffix=SYNTHETIC_FEW_SHOT_SUFFIX,
    examples=examples,
    example_prompt=openai_template,
    input_variables=['subject', 'extra']
)

# 4、创建一个结构化数据的生成器
generator = create_openai_data_generator(
    output_schema=MedicalBilling, # 指定输出数据的格式
    llm=llm,
    prompt=prompt_template,
)

# 5、调用生成器
result = generator.generate(
    subject='医疗账单', # 指定生成数据的主题
    extra='名字可以是随机的，最后使用比较生僻的人名。', # 额外的一些指导信息
    runs=10, # 指定生成数据的数量
)

print(result)

















