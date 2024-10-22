*** Settings ***

Library    Collections
Library    String

*** Variables ***
${Browser Nmae}  Chrome
@{colors}    red    green    yellow    blue
&{my_details}    name=Rahul    role=student    mobile=98703    


*** Test Cases ***
TC1
    Log To Console    ${Browser Nmae}

TC2 
    Log to console    ${Browser Nmae}
    Log to console     ${colors}
    Log to console    ${colors}[1]
    #Create a list and load mango,banan & orange
    @{Fruit_list}  Create List    Mango    Banana    Orange    Papaya        
    Log To Console    ${Fruit_list}
    #append grapes to list, insert kiwi at index 1, remove mango
    #print final output
    Append To List  ${Fruit_list}    grapes
    Log To Console    ${Fruit_list}
    Insert Into List    ${Fruit_list}    1    kiwi
    Log To Console    ${Fruit_list}
    Remove Values From List    ${Fruit_list}    Mango
    Log To Console    ${Fruit_list}
    ${result}=  Get Length    ${Fruit_list}
    Log To Console    ${result}
    

TC3
    ${Fruit_list}     Create List    apple    Banana    kiwi    grapes    orange    
    FOR    ${index}    IN RANGE    0    5    1
        Log To Console    ${Fruit_list}[${index}]
    
    END
TC4
    ${Fruits}    Create List        apple    Banana    kiwi    grapes    orange
    FOR    ${value}    IN    @{Fruits}
        Log To Console    ${value}
        
    END    
TC5
    Log To Console    ${my_details}    
    Log To Console    ${my_details}[mobile]   

TC6
    &{android_dic}    Create Dictionary    platformName=android    deviceName=Oneplus    app=Zomato
    Log To Console    ${android_dic}
    ${output}    Get From Dictionary        &{android_dic}        app
    Log To Console    ${output}

