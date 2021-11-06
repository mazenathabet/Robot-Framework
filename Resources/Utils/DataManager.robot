*** Settings ***
Documentation    User this layer to get data from external file
Library    ../../CustomLibs/Csv.py

*** Keywords ***
Get CSV Data  #This is a keyword to extract the data from a CSV file using the custom function
	[Arguments]    ${FilePath}
	${Data} =  read csv file    ${FilePath}
	[Return]  ${Data}