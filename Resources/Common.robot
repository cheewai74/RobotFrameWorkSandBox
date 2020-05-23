*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
setUp
    Open Browser  about:blank  chrome
    Maximize Browser Window

tearDown
    Close Browser