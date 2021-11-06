*** Settings ***
Library    SeleniumLibrary
Resource  ../../Resources/Common/Common.robot
Resource  ../../Resources/Modules/Registeration_feature.robot
Resource  ../../Data/UserData.robot
Resource  ../../Data/Configurations.robot

Test Setup  Begin Web Test   # Begin Web Test (Common) - steps to run before each test case
Test Teardown  End Web Test  # End Web Test (common)  - steps to run after each test *** test cases ***
*** Test Cases ***
User register multiple accounts at one time
	[Template]  Register multiple users   # run this keyword as many as the given test data below
	${SECOND_USER}
	${THIRD_USER}
	${FOURTH_USER}
	${FIFTH_USER}
	${SIXTH_USER}
	${SEVENTH_USER}
