*** Settings ***
Library    SeleniumLibrary
Resource  ../../Resources/Common/Common.robot
Resource  ../../Resources/Modules/Login_feature.robot
Resource  ../../Data/UserData.robot
Resource  ../../Data/Configurations.robot

Test Setup  Begin Web Test   # Begin Web Test (Common) - steps to run before each test case
Test Teardown  End Web Test  # End Web Test (common)  - steps to run after each test *** test cases ***
*** Test Cases ***
User Can login with empty credentails
    [Documentation]    This is a negative test case - trying to login with empty credentails
    [Tags]    Regresstion  Smoke
	LOGIN_FEATURE.NAVIGATE TO LOGIN PAGE
	LOGIN_FEATURE.USER LOGIN WITH INVALID CREDENTIALS  ${EMPTY_CREDENTIALS}
	LOGIN_FEATURE.VERIFY EMAIL VALIDATIONS ERROR MESSAGE  ${EMPTY_CREDENTIALS.Expected_Error}