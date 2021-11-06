*** Settings ***
Library    SeleniumLibrary
Resource   ./PageObjects/LandingPage.robot
Resource   ./PageObjects/HomePage.robot
Resource   ./PageObjects/LoginPage.robot

*** Keywords ***
Navigate to Login page
	LandingPage.Load
	LandingPage.Verify Page Loaded
	LandingPage.Go To Login Page
User Login With Valid Credentials
	[Arguments]    ${UserData}
	LoginPage.User Login With Valid Credentials    ${UserData}
verify user logged in successfuly
	HomePage.Verify User Logged In Successfuly

User Login with invalid Credentials
	[Arguments]    ${UserData}
	LoginPage.User Enters Email    ${UserData.Email}
	LoginPage.User Enters Password    ${UserData.password}
	LoginPage.User Clicks Login Button

Verify Email validations error message
	[Arguments]    ${ExpectedError}
	LoginPage.Verify Login Page Error Message  ${ExpectedError}
Verify Email is incorrect error message
	[Arguments]    ${ExpectedError}
	LoginPage.Verify Login Page Incorrect Email Error Message  ${ExpectedError}

Test Multiple Login Scenarios
	[Arguments]  ${UserData}
	Navigate to Login page
	User Login with invalid Credentials  ${UserData}
	Verify Email validations error message  ${UserData.Expected_Error}