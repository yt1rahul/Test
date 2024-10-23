*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Browser Implicit Wait    5
    Go To    http://demo.openemr.io/b/openemr/

    Input Text    name=authUser    admin
    Input Password    name=clearPass    pass
    Select From List By Label    name=languageChoice    English (Indian)
    Click Element    id=login-button
    Select Frame    xpath=//nav[@class='navbar navbar-expand-xl navbar-light bg-light py-0']
    Select From List By Label    xpath=//*[@id="mainMenu"]/div/div[6]/div/div    New/Search
    



