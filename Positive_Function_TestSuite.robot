*** Settings ***
Resource          Operation_Resource.robot

*** Test Cases ***
Hello_TestCase
    Send_Message    你好！
    ${ret}    Get_Reply
    Check_Hello_Returns    ${ret}

Time_TestCase
    Send_Message    现在几点了？
    ${ret}    Get_Reply
    ${curHour}    ${curMin}    Get Time    hour, min
    Should Contain    ${ret}    现在时刻${curHour}:${curMin}

Weather_TestCase
    Send_Message    今天天气怎么样？
    ${ret}    Get_Reply
    Should Contain    ${ret}    今天早上微风，温度23°，中午到下午晴朗，最高温度达32°，傍晚有小到大雨， 请主人出门注意防晒和准备雨具哦！
