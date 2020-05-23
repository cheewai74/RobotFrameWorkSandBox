*** Settings ***
Resource  ../Resources/Common.robot  # necessary for Setup & Teardown
Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Variables ***

*** Test Cases ***
Test Title
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Run TestCase_01

*** Keywords ***
Run TestCase_01
    Log  Running TestCase 01
