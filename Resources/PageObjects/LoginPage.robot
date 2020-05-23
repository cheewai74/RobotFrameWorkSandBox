*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***

Username
    Input Text  id=username  tomsmith
    Sleep  2s

Password
    Input Text  id=password  SuperSecretPassword!
    Sleep  2s

Login Button
    Click Element  css=#login > button
    Sleep  2s

Logout Button
    Click Element  css=#content > div > a
    Sleep  2s

Secure Area Page
    Current Frame Should Contain  Secure Area

Logout Page
    Current Frame Should Contain  You logged out of the secure area!
