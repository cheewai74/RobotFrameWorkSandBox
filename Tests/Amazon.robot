*** Settings ***
Documentation  This is some basic information about the whole suite
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser  http://www.amazon.com
    Wait Until Page Contains  Your Account
    Input Text  id=twotabsearchtextbox  Ferrari 458\n
    Press Keys  id=twotabsearchtextbox  ENTER
    Close Browser

*** Keywords ***




