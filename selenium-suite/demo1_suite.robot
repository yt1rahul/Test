*** Settings ***
Library    SeleniumLibrary
Library    XML

*** Test Cases ***
TC1
    Open Browser    url=https://www.google.com/webhp?hl=en&sa=X&ved=0ahUKEwjMhOSuj5-JAxVKXmwGHRJ2IAUQPAgI    browser=chrome
    ${title}    Get Title
    Log To Console    ${title}
    ${location}    Get Location
    Log To Console    ${location} 
    ${source}    Get Source
    Log To Console    ${source}  

TC2
    Open Browser    browser=chrome
    Maximize Browser Window
    Go To    url=https://github.com/login
    Input Text    id=login_field    hello@gmail.com    
    Input Password    id=password    321mans321 
    Click Element    name=commit
    Sleep    5

TC3
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    5
    #wait for page load
    Go To    url=https://www.facebook.com/    
    Click Link    link=Create new account
    Sleep    2

    Input Text    name=firstname    john
    Input Text    name=lastname    wick
    Click Element    xpath=//input[@value='-1']    #xpath//tagname[@attribute=""]

TC4
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20
    Go To    url=https://www.salesforce.com/in/form/signup/freetrial-sales/
    #Click Element    id=onetrust-reject-all-handler
    Input Text    name=UserFirstName    john
    Input Text    name=UserLastName    wick
    Input Text    name=UserEmail    john@gmail.com

    #Click Element    id=rejectInvite
    #Click Element    name=UserTitle    
    #Click Element    xpath=//*[@name="UserTitle"]/option[6]
    Select From List By Label    name=UserTitle    IT Manager

    Click Element    name=CompanyCountry
    Click Element    xpath=//*[@name="CompanyCountry"]/option[216]

    #Click Element    name=CompanyEmployees
    #Click Element    xpath=//*[@name="CompanyEmployees"]/option[4]
    Select From List By Label    name=CompanyEmployees    101 - 200 employees

    

    
    #Click Element    xpath=//*[@id="signup_form_YcZY"]/div[11]/button

    #Select Checkbox    xpath=//*[@id="signup_form_1zpL"]/div[5]/div/div/div[1]- in this case the code is hidden and this will not work
    Click Element    xpath:(//div[@class='checkbox-ui'])[2]

    






        


        