*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Should be able to search for product
    Open Browser  http://www.amazon.com
    Wait Until Page Contains  Your Account
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Sleep  5s
    Click Button  css=#nav-search > form > div.nav-right > div > input

*** Keywords ***
