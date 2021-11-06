*** Settings ***
Library    RequestsLibrary
Resource    ../../Resources/API/restful-booker.robot
*** Test Cases ***
Get all the booking ids
	[Tags]    API get request to retrive all the booking ids
	Get all the booking ids
get specific booking by id
	[Tags]  API get request to retrive a booking data by id
	Get booking by id

