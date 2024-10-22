*** Settings ***

Library    SeleniumLibrary
Library    OperatingSystem

Suite Teardown    Close Browser

*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Go To    url=https://www.db4free.net/
    #Click on phpMyAdmin
    # or use this //b[contains(text(),'phpMyAdmin')]


    #Click Link    xpath=/html/body/div/div/div[1]/nav/div[2]/ul/li[7]/a/b  didn't work
    Click Element    partial link=phpMyAdmin
    Switch Window    phpMyAdmin
    Input Text    id=input_username    admin 
    Input Password    id=input_password    admin123
    Click Element    xpath=//input[@value='Log in']
    Close Window
    Switch Window    db4free.net - MySQL Database for free

    

    [Teardown]    Run Keywords    Close Browser    AND       Log Title

