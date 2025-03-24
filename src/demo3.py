import os

from langchain_community.chat_message_histories import ChatMessageHistory
from langchain_core.messages import SystemMessage, HumanMessage
from langchain_core.prompts import ChatPromptTemplate, MessagesPlaceholder
from langchain_core.runnables import RunnableWithMessageHistory
from langchain_openai import ChatOpenAI

os.environ["LANGCHAIN_TRACING_V2"] = "true"
os.environ["LANGCHAIN_PROJECT"] = "LangchainDemo"
os.environ["LANGCHAIN_API_KEY"] = "你自己的LangSmith的api-key"

# 聊天机器人
# 1、创建模型
llm = ChatOpenAI(
    model="deepseek-chat",
    api_key="你自己的api-key",
    openai_api_base="https://api.deepseek.com"
)

# 定义模板
prompt_template = ChatPromptTemplate.from_messages([
    ('system', '你是一个乐于助人的助手。用{language}尽你所能回答所有问题。'),
    MessagesPlaceholder(variable_name='my_msg')
])

# 4、得到链
chain = prompt_template | llm

# 保存历史聊天记录
store = {} # 所有用户的聊天记录都保存道store。 key: sessionId, value: 历史聊天记录第项

# 此函数预期接收一个session_id并返回一个消息历史记录对象。
def get_session_history(session_id: str):
    if session_id not in store:
        store[session_id] = ChatMessageHistory()
    return store[session_id]

do_message = RunnableWithMessageHistory(
    chain,
    get_session_history,
    input_messages_key="my_msg"  # 每次聊天时候发送msg的key
)

config = {'configurable': {'session_id': 'qwer1234'}} # 给当前会话定义session_id

# 第一轮
resp1 = do_message.invoke(
    {
        'my_msg': [HumanMessage(content='你好，我是徐长春')],
        'language': '中文',
    },
    config=config
)

print(resp1.content)
print("store == ", store)

# 第二轮
resp2 = do_message.invoke(
    {
        'my_msg': [HumanMessage(content='请问，我的名字是什么')],
        'language': '中文',
    },
    config=config
)

# 第三轮: 返回的数据是流式的
for resp3 in do_message.stream(
    {
        'my_msg': [HumanMessage(content='请给我讲一个笑话')],
        'language': 'English',
    },
    config=config
):
    # 每一次resp都是一个token
    print(resp3.content, end="-")
