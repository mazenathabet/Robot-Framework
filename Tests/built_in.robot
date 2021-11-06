#*** Settings ***
#Library    SeleniumLibrary
#Documentation    Checking out the built-in library
#
#*** Variables ***
#${GLOBAL1} =  I am global variable 1
#
#*** Test Cases ***
#Declare and set variable
#	${some_test_data} =  set variable    This is only variable within the test
#	Set Test Variable  ${more_test_data}  This is also only variable within the test
#
#	# avialable in all tests in the current suite
#	Set Suite Variable  ${some_suite_data}  This is avialable within all the tests in this suite
#
#	# avialable in all tests in all suites
#	Set Global Variable  ${SOME_GLOBAL_DATA}  this avialable everywhere
#
#Logging stuff
#	[Tags]    Built-IN
#	comment  ${unset_variable}
#	comment  Just a random comment
#	comment  ${GLOBAL}
#	Log  I have something to say
#	Log Many  something to say1  something to say2  something to say3
#	Log To Console    this can only be seen in the console, not the log!
#	log variables    # This should log all the variables in scope
#	Log  $[some_suite_data}
#	Log  ${GLOBAL1}
#	Log  ${SOME_GLOBAL_DATA}
#
#Ignore failures in this test
#	[Tags]    Built-IN
#	Open Browser  http://www.amazon.com  chrome
#
#	# Notice the log will contain a summary of errors which were encountered
#	Run Keyword And Continue On Failure    Wait Until Page Contains Element    This text doesn't exist
#	Run Keyword And Continue On Failure    Wait Until Page Contains Element    more text that doesn't exist
#	# Run keyword and continue on failure log ${some_test_data}
#	Log  ${some_test_data}
#	Log  ${GLOBAL1}
#	Log  ${SOME_GLOBAL_DATA}
#	close browser
#
#Repeat Things
#	Repeat Keyword  3 Times  say something funny
#	Log    ${some_suite_data}
#	log    ${GLOBAL1}
#	log    ${SOME_GLOBAL_DATA}
#
#*** Keywords ***
#Say something funny
#	Log   These pretzels are making me thirsty ..