*** Variables ***
${DATE}           2011-06-27
${YEAR}           2011
${MONTH}          06
${DAY}            27

*** Test Cases ***
Succeeds
    Deadline is ${DATE}

Succeeds without variables
    Deadline is 2011-06-27

Fails
    Deadline is ${YEAR}-${MONTH}-${DAY}

*** Keywords ***
Deadline is ${deadline:\d{4}-\d{2}-\d{2}}
    Should Be Equal    ${deadline}    2011-06-27