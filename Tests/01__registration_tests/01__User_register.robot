*** Settings ***
Documentation   This is a user registration Test Suite
Resource  ../../Resources/Modules/Registeration_feature.robot
Resource  ../../Resources/Common/Common.robot
Resource  ../../Data/UserData.robot
Resource  ../../Data/Configurations.robot

Test Setup  Begin Web Test   # Begin Web Test (Common) - steps to run before each test case
Test Teardown  End Web Test  # End Web Test (common)  - steps to run after each test *** test cases ***
#Suite Setup  Setup Test Suite data  # steps to run before all the test cases
#Suite Teardown  Clean up Test Suite data    # steps to run after all the tests cases
*** Variables ***
# all the variables has moved to the files in the data folder
*** Test Cases ***
User fill data to register
    [Documentation]  This is a test case desiged as Procedural approach
    [Tags]  Smoke
    REGISTERATION_FEATURE.GO TO REGISTERATION PAGE
    REGISTERATION_FEATURE.FILL DATA AND CLICK REGISTER  ${FIRST_USER}
    REGISTERATION_FEATURE.VERIFY REGISTRATION



