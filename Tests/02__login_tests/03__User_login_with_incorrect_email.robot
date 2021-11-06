*** Settings ***
Library    SeleniumLibrary
Resource  ../../Resources/Common.robot
Resource  ../../Resources/Login_feature.robot
Resource  ../../Data/UserData.robot
Resource  ../../Data/Configurations.robot

Test Setup  Begin Web Test   # Begin Web Test (Common) - steps to run before each test case
Test Teardown  End Web Test  # End Web Test (common)  - steps to run after each test *** test cases ***
*** Test Cases ***
User Can login with incorrect credentails
    [Documentation]    This is a negative test case - trying to login with incorrect credentails
    [Tags]    Regresstion  Smoke
	LOGIN_FEATURE.NAVIGATE TO LOGIN PAGE
	LOGIN_FEATURE.USER LOGIN WITH INVALID CREDENTIALS  ${INCORRECT_CREDENTAILS}
	LOGIN_FEATURE.VERIFY EMAIL IS INCORRECT ERROR MESSAGE  ${INCORRECT_CREDENTAILS.Expected_Error}