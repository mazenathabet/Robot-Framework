*** Settings ***
Library    SeleniumLibrary
Resource  ../../Resources/Common.robot
Resource  ../../Resources/Login_feature.robot
Resource  ../../Data/UserData.robot
Resource  ../../Data/Configurations.robot

Test Setup  Begin Web Test   # Begin Web Test (Common) - steps to run before each test case
Test Teardown  End Web Test  # End Web Test (common)  - steps to run after each test *** test cases ***
*** Test Cases ***
User Can login with wrong format email
    [Documentation]    This is a negative test case - trying to login with wrong format email
    [Tags]    Regresstion  Smoke
	LOGIN_FEATURE.NAVIGATE TO LOGIN PAGE
	LOGIN_FEATURE.USER LOGIN WITH INVALID CREDENTIALS  ${WRONG_FORMAT_CREDENTIALS}
	LOGIN_FEATURE.VERIFY EMAIL VALIDATIONS ERROR MESSAGE  ${WRONG_FORMAT_CREDENTIALS.Expected_Error}


