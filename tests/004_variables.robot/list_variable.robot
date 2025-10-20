*** Test Cases ***
Nested container
    ${nested} =    Evaluate    [['a', 'b', 'c'], {'key': ['x', 'y']}]
    Log Many    @{nested}[0]         # Logs 'a', 'b' and 'c'.
    Log Many    @{nested}[1][key]    # Logs 'x' and 'y'.
    Log    @{nested}

Slice
    ${items} =    Create List    first    second    third
    Log Many    @{items}[1:]         # Logs 'second' and  'third'.
    Log    ${items}