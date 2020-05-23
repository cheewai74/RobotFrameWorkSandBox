*** Settings ***
Resource  ../Resources/Common.robot  # necessary for Setup & Teardown
Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Variables ***

*** Test Cases ***
Test Title
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Given  PreCondition
    When  Execute Step
    Then  Verify Expected Results

*** Keywords ***
Precondtion
    Log  In Landing Page

Execute Step
    Log  Execute Steps

Verify Expected Results
    Log  Expecteed Results