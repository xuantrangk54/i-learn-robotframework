*** Settings ***
*** Variables ***
*** Test Cases ***
Normal test case
    Example keyword    first argument    second argument

Templated test case
    [Template]    Example keyword
    first argument    second argument
    first argument    second argument
    first argument    second argument

*** Keywords ***
Example keyword
    [Arguments]    ${arg1}    ${arg2}
    Log To Console    Argument 1: ${arg1}
    Log To Console    Argument 2: ${arg2}