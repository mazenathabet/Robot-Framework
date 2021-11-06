*** Settings ***
Documentation   This is a user registration Test Suite
Resource  ../../Resources/Registeration_feature.robot
Resource  ../../Resources/Common/Common.robot
Resource  ../../Data/UserData.robot
Resource  ../../Data/Configurations.robot

Test Setup  Begin Web Test   # Begin Web Test (Common) - steps to run before each test case
Test Teardown  End Web Test  # End Web Test (common)  - steps to run after each test *** test cases ***

*** Variables ***
# all the variables has moved to the files in the data folder
*** Test Cases ***
User register with existing email
	[Documentation]  This is a test case desinged as gherkin approach
	[Tags]  Regresstion
	Given REGISTERATION_FEATURE.GO TO REGISTERATION PAGE
	When REGISTERATION_FEATURE.FILL DATA AND CLICK REGISTER  ${FIRST_USER}
	Then REGISTERATION_FEATURE.VERIFY I CANT USE SAME EMAIL TWICE