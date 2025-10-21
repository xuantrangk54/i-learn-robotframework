*** Settings ***
Library    String

*** Keywords ***
Return One Value
    [Arguments]    ${arg}
    [Documentation]    Return a value unconditionally.
    ...                Notice that keywords after RETURN are not executed.
    ${value} =    Convert To Upper Case    ${arg}
    RETURN    ${value}
    Fail    Not executed

Return Three Values
    [Documentation]    Return multiple values.
    RETURN    a    b    c

Conditional Return
    [Arguments]    ${arg}
    [Documentation]    Return conditionally.
    Log    Before
    IF    ${arg} == 1
        Log    Returning!
        RETURN
    END
    Log    After

Find Index
    [Arguments]    ${test}    ${items}
    [Documentation]    Advanced example involving FOR loop, inline IF and @{list} variable syntax.
    FOR    ${index}    ${item}    IN ENUMERATE    @{items}
        IF    $item == $test    RETURN    ${index}
    END
    RETURN    ${-1}