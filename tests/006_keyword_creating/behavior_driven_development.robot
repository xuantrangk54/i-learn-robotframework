
*** Variables ***
${CALCULATOR_PROGRAM}    CalculatorApp
${PLUS_BUTTON}          +
${EQUALS_BUTTON}        =
${number 1}              0
${number 2}              0
${expected}              0    

*** Test Cases ***
Add two numbers
    Given I have Calculator open
    When I add 2 and 40
    Then result should be 42

Add negative numbers
    Given I have Calculator open
    When I add 1 and -2
    Then result should be -1

*** Keywords ***
I have ${program} open
    Start Program    ${program}

I add ${number 1} and ${number 2}
    Input Number    ${number 1}
    Push Button     +
    Input Number    ${number 2}
    Push Button     =

Result should be ${expected}
    ${result} =    Get Result
    Should Be Equal    ${result}    ${expected}

Input Number 
    [Arguments]    ${number}
    # Implementation to input number into the calculator
    Log    Inputting number: ${number}

Start program
    [Arguments]    ${program}
    # Implementation to start the calculator program
    Log    Starting program: ${program}    

Push Button 
    [Arguments]    ${button}
    # Implementation to push a button on the calculator
    Log    Pushing button: ${button}

Get Result
    # Implementation to get the result from the calculator
    Log    Getting result from calculator
    [Return]    42  # Placeholder return value for demonstration

