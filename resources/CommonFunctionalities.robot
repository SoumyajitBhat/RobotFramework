*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${url}        https://login.salesforce.com/
${browser}    chrome

*** Keywords ***
Start Testcase
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys

    ${arg1}=    Set Variable    --headless=new
    ${arg2}=    Set Variable    --no-sandbox
    ${arg3}=    Set Variable    --disable-dev-shm-usage
    ${arg4}=    Set Variable    --window-size=1920,1080

    Call Method    ${options}    add_argument    ${arg1}
    Call Method    ${options}    add_argument    ${arg2}
    Call Method    ${options}    add_argument    ${arg3}
    Call Method    ${options}    add_argument    ${arg4}

    Open Browser    ${url}    ${browser}    options=${options}

End Testcase
    Close Browser