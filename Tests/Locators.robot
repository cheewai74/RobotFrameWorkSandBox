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
    Sleep  5s
    Click Link  xpath=/html/body/div[1]/div[1]/div[1]/div[2]/div/span[4]/div[2]/div[1]/span/div/div/div[2]/div[2]/div/div/a[1]
    Close Browser

*** Keywords ***
