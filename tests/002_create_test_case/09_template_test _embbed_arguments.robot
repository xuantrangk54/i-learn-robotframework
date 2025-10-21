*** Test Cases ***
Normal test case with embedded arguments
    The result of 1 + 1 should be 2
    The result of 1 + 2 should be 3

Template with embedded arguments
    [Template]    The result of ${calculation} should be ${expected}
    1 + 1    2
    1 + 2    3

*** Keywords ***
The result of ${calculation} should be ${expected}
    ${result} =    Calculate    ${calculation}
    ${expectedInt} =   Convert To Integer    ${expected}
    Should Be Equal    ${result}     ${expectedInt}

Calculate
    [Arguments]    ${expression}    
    ${result} =    Evaluate    ${expression}
    [Return]    ${result}    