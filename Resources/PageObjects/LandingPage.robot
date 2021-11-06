*** Settings ***
Library    SeleniumLibrary
Resource   ../PageLocators/HomePageLocators.robot
*** Keywords ***
Load
	go to    ${URL.${ENVIRONMENT}}
Verify page loaded
	title should be    nopCommerce demo store
	Wait Until Page Contains Element    ${REGISTER_LINK}
	Page Should Contain Element    ${REGISTER_LINK}
Click on Register Link
	click element    ${REGISTER_LINK}
Go to login page
	click element    ${login_link}