*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER} =  chrome

*** Keywords ***
setUp
    Open Browser  about:blank  ${BROWSER}
    Maximize Browser Window

tearDown
    Close Browser