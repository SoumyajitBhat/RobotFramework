*** Settings ***
Library  SeleniumLibrary
Variables  ../variables/WebElements.py

*** Variables ***

*** Keywords ***
Enter OTP
    [Arguments]  ${otp}
    Input Text  ${otpTextField}  ${otp}
    
Click Verify
    Press Keys  ${verifyButton}  [Return]