*** Settings ***
Library  SeleniumLibrary
Variables  ../variables/WebElements.py

*** Variables ***
${username}  soumyajit.bhattacharjee.c636ebab030f@agentforce.com
${password}  Somu@181402

*** Keywords ***
Enter Username
    Input Text  ${userNameTextField}  ${username}

Enter Password
    Input Text  ${passwordTextField}  ${password}
    
Click Login
    Press Keys  ${loginButton}  [Return]