*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Herokuapp Homepage
    GO TO  https://the-internet.herokuapp.com/
    Wait Until Page Contains  Welcome to the-internet

Form Authentication
    # GO TO  https://the-internet.herokuapp.com/
    # Wait Until Page Contains  Welcome to the-internet
    # Click Link  linktext=Form Authentication
    # Wait Until Page Contains   Login Page
    GO TO  https://the-internet.herokuapp.com/login
    Wait Until Page Contains   Login Page