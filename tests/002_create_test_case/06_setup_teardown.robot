*** Settings ***
Test Setup       Open Application    App A
Test Teardown    Close Application

*** Variables ***
${SETUP}        Open Application  
${TEARDOWN}     Close Application

*** Test Cases ***
Default values
    [Documentation]    Setup and teardown from setting section
    Do Something

Overridden setup
    [Documentation]    Own setup, teardown from setting section
    [Setup]    Open Application    App B
    Do Something

No teardown
    [Documentation]    Default setup, no teardown at all
    Do Something
    [Teardown]

No teardown 2
    [Documentation]    Setup and teardown can be disabled also with special value NONE
    Do Something
    [Teardown]    NONE

Using variables
    [Documentation]    Setup and teardown specified using variables
    [Setup]    ${SETUP}    'XXY App'
    Do Something
    [Teardown]    ${TEARDOWN}

*** Keywords ***
Open Application
    [Arguments]    ${app_name}
    Log    Opening application: ${app_name}

Close Application
    Log    Closing application
Do Something
    Log    Doing something in the test case

## Note: 1. Overite setup and teardown in test case level will override the one defined in setting section.
#        2. Disabling teardown can be done by setting it to NONE or leaving it blank.
#        3. Variables can be used to define setup and teardown keywords for better reusability.
