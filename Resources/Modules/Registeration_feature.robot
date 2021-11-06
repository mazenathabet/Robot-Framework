*** Settings ***
Library    SeleniumLibrary

Resource   ../PageObjects/LandingPage.robot
Resource   ../PageObjects/RegisterPage.robot
Resource   ../PageObjects/HomePage.robot

*** Keywords ***
Go to Registeration page
    LandingPage.load
    LandingPage.Verify Page Loaded
    LandingPage.Click On Register Link
Fill data and click register
	[Arguments]    ${UserData}
	RegisterPage.Fill Registration Data And Click Register  ${UserData}
Verify registration
    HomePage.Verify Registeration Completed

Verify I cant use same email twice
	RegisterPage.Verfiy I Cant Use Registred Email Again

Register multiple users
	[Arguments]    ${Register_data}
	Go to Registeration page
	Fill data and click register  ${Register_data}
	Verify registration

Register multiple users with csv
	[Arguments]    ${Register_data}
	FOR  ${register_user}  IN  @{Register_data}
		#run keyword and continue on failure  -> if anything fails it will move on to the next keyword and keeps the loop going
		Go to Registeration page
		click register using csv  ${register_user}
		Verify registration
	END
