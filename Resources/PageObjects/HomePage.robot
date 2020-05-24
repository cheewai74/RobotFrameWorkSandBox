*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Herokuapp Homepage
    GO TO  https://the-internet.herokuapp.com/
    Wait Until Page Contains  Welcome to the-internet

Click LinkText
    [Arguments]  ${link_Text}
    Click Link  linktext=${link_Text}
    Wait Until Page Contains  ${link_Text}

Form Authentication
    # GO TO  https://the-internet.herokuapp.com/
    # Wait Until Page Contains  Welcome to the-internet
    # Click Link  linktext=Form Authentication
    # Wait Until Page Contains   Login Page
    GO TO  https://the-internet.herokuapp.com/login
    Wait Until Page Contains   Login Page