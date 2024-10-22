*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Browser Implicit Wait    10
    Go To    https://www.malaysiaairlines.com/in/en/home.html?cid=sem|in-brand|goo|tac|res|pros|in||en|campaign|mab|con&cid=sem|INAO2023|goo|pros|rsa|alw|in|-|en|campaign&gad_source=1&gclid=Cj0KCQjwmt24BhDPARIsAJFYKk1_X0bfzzkjXCYEVH7wQ7kaqo3GgyT72j-5JPzoen7uQmz8WVJ1LsAaAhMCEALw_wcB   
    Click Element    xpath=/html/body/div[2]/div/div/div[2]/div/div/div/div[2]/button/span





    #used when javascript based website
    Execute Javascript    document.querySelector("input[name='dateDeparture']").value='29 Oct 2024'

    


