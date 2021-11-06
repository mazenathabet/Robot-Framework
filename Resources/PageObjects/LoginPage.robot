*** Settings ***
Library    SeleniumLibrary
Resource   ../PageLocators/Locators.robot
*** Keywords ***
verify login page is loaded
	Wait Until Page Contains Element    ${SIGN_IN_LABEL}
	Page Should Contain Element    ${SIGN_IN_LABEL}
	Element Text Should Be    ${SIGN_IN_LABEL}  Welcome, Please Sign In!
User login with valid credentials
	[Arguments]    ${UserData}
	User Enters Email    ${UserData.Email}
	User Enters Password    ${UserData.Password}
	User Select Rememeber Me Checkbox
	User Clicks Login Button
User enters email
	[Arguments]    ${email}
	input text    ${EMAIL_BOX}    ${email}  true
User enters password
	[Arguments]    ${password}
	input password    ${PASSWORD_BOX}   ${password}
User clicks login button
	Click Element  ${LOGIN_BUTTON}
User select rememeber me checkbox
	Select Checkbox  ${REMEMBER_ME_CHECK}
Verify Login Page Error Message
	[Arguments]    ${error_message}
	Page Should Contain Element  ${EMAIL_VALIDATION_ERROR}
	Element Text Should Be    ${EMAIL_VALIDATION_ERROR}  ${error_message}
Verify Login Page Incorrect Email Error Message
	[Arguments]    ${error_message}
	Page Should Contain Element    ${INCORRECT_USER_LABEL}
	Element Text Should Be    ${INCORRECT_USER_LABEL}  ${error_message}

