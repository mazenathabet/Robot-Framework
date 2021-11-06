*** Settings ***
Library    RequestsLibrary

*** Keywords ***
Get all the booking ids
	# create the session
	Create Session    getBookingIds  https://restful-booker.herokuapp.com
	# make the call ( and capture the response in a variable
	${response} =  GET On Session    getBookingIds  /booking
	# check the response status
	log  ${response}
	Should Be Equal As Strings    ${response.status_code}  200
	# check the response body
	${json} =  Set Variable  ${response.json()}
	Log  ${json}

Get booking by id
	# create the session
	Create Session  getBookingById  https://restful-booker.herokuapp.com
	# the get API call
	${response} =  GET On Session  getBookingById    /booking/1
	#check the response status
	log  ${response}
	Should Be Equal As Strings    ${response.status_code}  200
	# check the response body
	${json} =  Set Variable  ${response.json()}
	Should Be Equal As Strings  ${json['firstname']}   Susan
	Log  ${json}