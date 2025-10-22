*** Settings ***
Library    libs.myutils.MyUtils.MyUtils

*** Test Cases ***
Test Greeting
    Say Hello    Andy

Test Multiply
    ${result}=    Multiply    4    5
    Log To Console    Result: ${result}


*** Test Cases ***
Check Keywords
    ${keywords}=    Get Library Instance    libs.myutils.MyUtils.MyUtils
    Log    ${keywords}

