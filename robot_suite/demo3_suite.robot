*** Settings ***
Library    OperatingSystem
*** Test Cases ***
TC1

    Append To Environment Variable    path    C:${\}Users${\}rahuly${\}.cache${\}selenium${\}chromedriver${\}win64${\}130.0.6723.69
    Log Environment Variables
    Create Dictionary    path=${EXECDIR}${/}downloads
    Directory Should Exist    path=${EXECDIR}${/}downloads

TC3
    Log    ${TEMPDIR}
    @{files}    List Files In Directory    C:${/}Users${/}rahuly
    Log To Console    ${files}

      