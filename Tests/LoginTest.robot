*** Settings ***
Resource  ../Resources/Common.robot  # necessary for Setup & Teardown
Resource  ../Resources/PageObjects/HomePage.robot
Resource  ../Resources/PageObjects/LoginPage.robot

#Test Setup  setUp
#Test Teardown  tearDown
Suite Setup  setUp
Suite Teardown  teardown

*** Variables ***

*** Test Cases ***
Testcase 01
    [Documentation]  https://the-internet.herokuapp.com/ > Form Authentication
    [Tags]  Smoke - Login Test

    Given User on user login page
    When User enter username
    when User enter password
    when User click login button
    Then User on Secure Login Page

Testcase 02
    [Documentation]  https://the-internet.herokuapp.com/ > Form Authentication
    [Tags]  Smoke - Logout Test

    Given User on Secure Login Page
    when User click Logout Button
    Then User successfully logout

*** Keywords ***
User on user login page
    HomePage.Form Authentication

User enter username
    LoginPage.Username

User enter password
    LoginPage.Password

User click login button
    LoginPage.Login Button

User click Logout Button
    LoginPage.Logout Button

User on Secure Login Page
    LoginPage.Secure Area Page

User successfully logout
    LoginPage.Logout Page