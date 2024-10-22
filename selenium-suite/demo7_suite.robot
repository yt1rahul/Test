*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Browser Implicit Wait    10
    Go To    http://demo.openemr.io/b/openemr/

    Input Text    name=authUser    admin
    Input Password    name=clearPass    pass
    Select From List By Label    name=languageChoice    English (Indian)
    Click Element    id=login-button
    Click Element    Label=Patient
    Click Element    name=menuEntries


