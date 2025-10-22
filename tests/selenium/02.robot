*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Login with correct Username and Password
    Open Browser    url=https://dantri.com.vn/    browser=chrome
    ${elevent}=    Get WebElement    link:ĐỜI SỐNG
    Click Element    ${elevent}
    Element Should Be Visible    ${elevent}
    Execute Javascript    window.scrollBy(0, 1000);
    Close Browser

Test for window
    ${BROWSER}=    Set Variable    chrome
    Open Browser    	https://robotframework.org/    ${BROWSER}    	alias=BrowserA
    Execute Javascript    window.open()
    Switch Window    locator=NEW
    Go To    https://robocon.io
    Execute Javascript    window.open()
    ${handle}	Switch Window	locator=NEW
    Go To	https://github.com/robotframework/
    Open Browser	https://github.com	${BROWSER}	alias=BrowserB	
    ${location}	Get Location
    @{locations 1}	Get Locations
    @{locations 2}	Get Locations	browser=ALL	
    Log    @{location}
    Log    @{locations 1}
    Log    @{locations 2}
    Set Selenium Timeout    10
    Capture Page Screenshot