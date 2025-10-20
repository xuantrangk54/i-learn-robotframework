*** Settings ***
Library    String

*** Variables ***
${MAX AMOUNT}      ${5000000}

*** Test Cases ***
Normal Error
    Fail    This is a rather boring example...

HTML Error
    ${number} =    Set Variable    7      
    Should Be Equal    ${number}    42    *HTML* Number is not my <b>MAGIC</b> number.

Amount cannot be larger than ${MAX AMOUNT}
    [Documentation]    Document at her for ${MAX AMOUNT}
    ${DATA} =    Set Variable    "10000000"
    Should Not Be Empty    ${DATA}

