*** Settings ***
Library    String

*** Test Cases ***
Basic Syntax Test
    Log To Console    This is a basic syntax test case
    ${random_string}=    Generate Random String    15
    Log To Console    Generated Random String: ${random_string}

## Note: Basic syntax test case to verify Robot Framework syntax and String library functionality.
## Column syntax type