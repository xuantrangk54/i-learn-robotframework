*** Settings ***
Library    mypackage.MyUtils.MyUtils    WITH NAME    MyUtils

*** Test Cases ***
Test Greeting
    Say Hello    Andy

Test Multiply
    ${result}=    Multiply    4    5
    Log To Console    Result: ${result}

Test Keyword With Custom Name Decorator
    RenameKeywordWithCustomNameByDecoratorNew
    KeywordWithCustomNameByVairableNew



    


