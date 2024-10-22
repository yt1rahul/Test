*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://datatables.net/extensions/select/examples/checkbox/checkbox.html
    ${name1}    Get Text    xpath=//table[@id='example']/tbody/tr[1]/td[2].
    Log To Console    ${name1}


TC2
#for printing names from a column
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://datatables.net/extensions/select/examples/checkbox/checkbox.html

    FOR    ${counter}    IN RANGE    1    11    
        ${value}    Get Text    xpath=//table[@id='example']/tbody/tr[${counter}]/td[2]
        Log To Console    ${value}  
        
    END

TC3
#for printing names from a column
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://datatables.net/extensions/select/examples/checkbox/checkbox.html

    FOR    ${counter}    IN RANGE    1    11    
        ${value}    Get Text    xpath=//table[@id='example']/tbody/tr[${counter}]/td[2]
        Log To Console    ${value}  
        
    END

TC4  .
#for printing names from a column
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://datatables.net/extensions/select/examples/checkbox/checkbox.html
    
    ${element_count}    Get Element Count    

    FOR    ${counter}    IN RANGE    1    11    
        ${value}    Get Text    xpath=//table[@id='example']/tbody/tr[${counter}]/td[2]
        Log To Console    ${value}  
        
    END  

   
    

