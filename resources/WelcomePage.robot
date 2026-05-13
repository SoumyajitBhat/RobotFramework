*** Settings ***
Library  SeleniumLibrary
Variables  ../variables/WebElements.py

*** Variables ***

*** Keywords ***
Click Profile Icon
    Press Keys  ${profileIcon}  [Return]

Click Logout Button
    Press Keys  ${logoutButton}  [Return]