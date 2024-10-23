*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    XML

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

TC4 
    #for printing names from a column-My CODE
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://datatables.net/extensions/select/examples/checkbox/checkbox.html
    
    ${First_page}    Page Should Not Contain Element    xpath=//button[@class='dt-paging-button disabled last']
    Log To Console    ${First_page}
          
       
    WHILE    ${First_page} != $None
           
        ${No_of_items}    Select From List By Label    name=example_length    10
        FOR    ${counter}    IN RANGE    1    {No${No_of_items}+1  
            ${value}    Get Text    xpath=//table[@id='example']/tbody/tr[${counter}]/td[2]
            Log To Console    ${value}  
        END
        Click Element    xpath=//button[@class='dt-paging-button next']
    
        Log To Console       End Here
        
    END
TC5


    
      

   
    

