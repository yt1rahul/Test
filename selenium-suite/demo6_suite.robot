*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://www.ilovepdf.com/pdf_to_word
    Choose File    xpath=//input[@type='file']    file_path=C:${/}Mine${/}profile.pdf
    # Choose File    xpath=//input[@type='file']    file_path=C:${/}Mine${/}demo.txt

TC2
#Imp things to remember
    Log To Console    C:\\Mine\\profile.pdf
    Log To Console    C:${/}Mine${/}profile.pdf
    Log To Console    ${EXECDIR}
    Log To Console    ${CURDIR}
    Log To Console    ${TEMPDIR}
    Log To Console    ${OUTPUT_DIR}
    Log To Console    ${TEST_NAME}
    Log To Console    ${SUITE_NAME}
