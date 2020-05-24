*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Click Add Elements
    Click Element  css=#content > div > button
    Sleep  2s
