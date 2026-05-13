*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}        https://login.salesforce.com/
${browser}    chrome

*** Keywords ***
Start Testcase
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys

    Call Method    ${options}    add_argument    --headless=new
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --window-size=1920,1080

    Open Browser    ${url}    ${browser}    options=${options}
    Maximize Browser Window

End Testcase
    Close Browser