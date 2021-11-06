*** Settings ***
Library    SeleniumLibrary
Resource  ../../Resources/Common/Common.robot
Resource  ../../Resources/Registeration_feature.robot
Resource  ../../Resources/Utils/DataManager.robot
Resource  ../../Data/Configurations.robot

Test Setup  Begin Web Test   # Begin Web Test (Common) - steps to run before each test case
Test Teardown  End Web Test  # End Web Test (common)  - steps to run after each test *** test cases ***
*** Test Cases ***
User register multiple accounts using data from csv file
	${register_users} =  DataManager.Get CSV Data  ${REGISTER_USER_CSV_FILE_PATH}
	REGISTERATION_FEATURE.REGISTER MULTIPLE USERS WITH CSV  ${register_users}

