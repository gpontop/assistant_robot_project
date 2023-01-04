*** Settings ***
Resource          Operation_Resource.robot

*** Test Cases ***
Unknown_TestCase
    Send_Message    你不知道的问题
    ${ret}    Get_Reply
    Should Contain    ${ret}    对不起！我现在还不能理解您在说什么，请尝试其他问题吧。
    Send_Message    M>YIO*M<>JHGYO
    ${ret}    Get_Reply
    Should Contain    ${ret}    对不起！我现在还不能理解您在说什么，请尝试其他问题吧。
