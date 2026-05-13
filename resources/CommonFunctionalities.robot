*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://login.salesforce.com/ 
${browser}  chrome

*** Keywords ***
Start Testcase
    Open Browser  ${url}  ${browser}

End Testcase
    Close Browser