*** Settings ***
Library    DateTime
Library    String

*** Test Cases ***
TC1
  Log To Console    message=Rahul Yadav
  ${Hi}=  Set Variable    Hello World
  Log To Console    ${Hi}

TC2
   ${radius}=  Set Variable    10
    ${result}  Evaluate    3.14*${radius}*${radius}
    Log To Console    ${result}
    Log    ${result}

TC3
   ${current_date}  Get Current Date
   Log to console  ${current_date}

TC4 
  Set Local Variable    ${mail}  John@gmail.com
  ${str}=  Remove String  ${mail}  @gmail.com
  Log to console  ${str}
  Should Be Equal As Strings    ${str}    John
  
TC5