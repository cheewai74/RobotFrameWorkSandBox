*** Settings ***
Documentation  These are some web tests
Library  Dialogs
Resource  ../Resources/Common.robot
Resource  ../Resources/PageObjects/HomePage.robot
Resource  ../Resources/PageObjects/LoginPage.robot
#Test Setup  setUp
#Test Teardown  tearDown
Suite Setup  setUp
Suite Teardown  teardown

*** Variables ***
${BROWSER} =  chrome

*** Test Cases ***

Testcase 01
    [Tags]  Web
    Given User on user login page
    When User enter username  tomsmith
    when User enter password  SuperSecretPassword!
    when User click login button
    Then User Successfully Login to Secure Login Page

Testcase 02
    [Documentation]  https://the-internet.herokuapp.com/ > Form Authentication
    [Tags]  Smoke - Logout Test

    Given User on Secure Login Page
    when User click Logout Button
    Then User successfully logout

*** Keywords ***
User on user login page
    ${new_browser} =  Get Selection From User  Which browser?  chrome  ie  firefox
    Set Global Variable  ${BROWSER}  ${new_browser}
    HomePage.Herokuapp Homepage
    HomePage.Form Authentication

User enter username
    [Arguments]  ${username}
    LoginPage.Username  ${username}

User enter password
    [Arguments]  ${password}
    LoginPage.Password  ${password}

User click login button
    Pause Execution
    LoginPage.Login Button

User click Logout Button
    Pause Execution
    LoginPage.Logout Button

User Successfully Login to Secure Login Page
    Execute Manual Step  Successfully Login To Secure Login Page!  It failed!

User successfully logout
    Execute Manual Step  Successfully Logout To Secure Login Page!  It failed!

User on Secure Login Page
    LoginPage.Secure Area Page