*** Settings ***
Library    SeleniumLibrary
Resource  ../../Resources/Common/Common.robot
Resource  ../../Resources/Login_feature.robot
Resource  ../../Data/UserData.robot
Resource  ../../Data/Configurations.robot

Test Setup  Begin Web Test   # Begin Web Test (Common) - steps to run before each test case
Test Teardown  End Web Test  # End Web Test (common)  - steps to run after each test *** test cases ***

*** Test Cases ***
User Can login with valid credentials
    [Documentation]    this is a user login testcase
    [Tags]    Regresstion  Smoke
	LOGIN_FEATURE.NAVIGATE TO LOGIN PAGE
	LOGIN_FEATURE.USER LOGIN WITH VALID CREDENTIALS  ${FIRST_USER}
	LOGIN_FEATURE.VERIFY USER LOGGED IN SUCCESSFULY


