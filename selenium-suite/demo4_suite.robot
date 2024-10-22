*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    5s
    Go To    url=https://netbanking.hdfcbank.com/netbanking/
    #enter userid as john123
    Select Frame    name=login_page
    Input Text    name=fldLoginUserId    john123
    Click Element    link=CONTINUE
    

    Unselect Frame
    Sleep    1
    Close Browser