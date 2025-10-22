*** Settings ***
Library    myutils.MyUtils

*** Test Cases ***
Test Greeting
    Say Hello    Andy

Test Multiply
    ${result}=    Multiply    4    5
    Log To Console    Result: ${result}

