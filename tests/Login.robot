*** Settings ***
Documentation  Basic Login Logout Functionality
Library  SeleniumLibrary
Library    ../totp_helper.py

Resource  ../resources/CommonFunctionalities.robot
Resource  ../resources/LoginPage.robot
Resource  ../resources/OTPPage.robot
Resource  ../resources/WelcomePage.robot

Test Setup  CommonFunctionalities.Start Testcase
Test Teardown  CommonFunctionalities.End Testcase

*** Variables ***
${TOTP_SECRET}  7N7CL5OMIQ3EEBPAOZIVKJIYB3RBSXXH
*** Test Cases ***
Verify login functionality for salesforce dev
    [Documentation]  This test case verifies the basic login and logout functionality
    [Tags]    SCRUM-TC-325

        LoginPage.Enter Username
        LoginPage.Enter Password
        LoginPage.Click Login
        
        # Generate OTP
        ${otp}=    Get Totp Token    ${TOTP_SECRET}
        
        Wait Until Element Is Visible  ${otpTextField}  timeout=10s
        OTPPage.Enter OTP    ${otp}
        OTPPage.Click Verify
        Wait Until Element Is Visible  ${profileIcon}  timeout=15s
        WelcomePage.Click Profile Icon
        Wait Until Element Is Visible  ${logoutButton}  timeout=10s
        WelcomePage.Click Logout Button

*** Keywords ***