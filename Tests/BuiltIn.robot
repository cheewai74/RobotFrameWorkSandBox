*** Settings ***
Library  SeleniumLibrary
Documentation  Checking out the built-in library


*** Variables ***
${GLOBAL} =  Global Variable Demo
${SOME_GLOBAL_DATA}

*** Test Cases ***
Declare and set variables
    ${some_test_data} =  Set Variable  This is only available within this test
    Set Test Variable  ${more_test_data}  This is also only available within this test

    # available in all tests in the current set suite
    Set Suite Variable  ${some_suite_data}  This is available within all tests in this suite

    # available in all tests in all suites
    Set Global Variable  ${SOME_GLOBAL_DATA}  This available everywhere

Logging stuff
    [Tags]  BuiltIn
    Comment  ${unset_variable}
    Comment  Just a random comment
    Comment  ${GLOBAL}
    Log  I have something to say
    Log Many  Something to say 1  Something to say 2  Something to say 3
    Log to Console  This can only be seen in the console, not the log!
    Log Variables  # this should log all the variables in scope
    Log  ${some_suite_data}
    Log  ${GLOBAL}
    Log  ${SOME_GLOBAL_DATA}

Ignore failures in this test
    [Tags]  BuiltIn
    Open Browser  https://the-internet.herokuapp.com/  chrome

    # notice the log will contain a summary of errors which were encountered
    Run Keyword And Continue On Failure  Wait Until Page Contains  This text doesn't exist
    Run Keyword And Continue On Failure  Wait Until Page Contains  More text that doesn't exist
    #Run Keyword And Continue on Failure  Log  ${some_test_data}

    Log  ${some_suite_data}
    Log  ${GLOBAL}
    Log  ${SOME_GLOBAL_DATA}
    Close Browser


Say something funny
    Log  ${some_suite_data}
    Log  ${GLOBAL}
    Log  ${SOME_GLOBAL_DATA}

Repeat things
    Repeat Keyword  3 Times  Say Something Funny
    Log  ${some_suite_data}
    Log  ${GLOBAL}
    Log  ${SOME_GLOBAL_DATA}

*** Keywords ***
Say something funny
    LOG  Hello Funny Guy
