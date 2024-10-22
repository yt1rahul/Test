*** Settings ***
Library    SeleniumLibrary
#for java script ALERTS
*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    5s
    Go To    url=https://netbanking.hdfcbank.com/netbanking/IpinResetUsingOTP.htm

    #click on Go
    Click Element    xpath=//img[@alt='Go']
    Sleep     5
    ${Actual_alert}    Handle Alert
    Log    ${Actual_alert}
    Log To Console    ${Actual_alert}
    Should Be Equal As Strings    ${Actual_alert}  Customer ID${SPACE}${SPACE}cannot be left blank.