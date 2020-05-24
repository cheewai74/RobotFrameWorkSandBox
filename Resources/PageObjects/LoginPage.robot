*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***

Username
    [Arguments]  ${username}
    Log  Key in username ${username}
    Input Text  id=username  ${username}
    Sleep  2s

Password
    [Arguments]  ${password}
    Log  Key in password ${password}
    Input Text  id=password  ${password}
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
