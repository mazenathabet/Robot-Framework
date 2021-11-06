*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${My_VALUE} =  100
*** Test Cases ***
Testing a true if statement
	Run Keyword If    ${MY_VALUE} > 50   Keyword 1
Testing a false if statement
	Run Keyword If    ${MY_VALUE} > 200  Keyword 1
Testing an IF/ELSE statement
	Run Keyword If    ${My_VALUE} > 200  keyword 1
	...  ELSE  keyword 2
Testing an IF/ELSE IF/ELSE statement
	Run Keyword If    ${My_VALUE} > 200  keyword 1
	...  ELSE IF  ${My_VALUE} == 10      Keyword 2
	...  ELSE                            Keyword 3
Testing an IF/ELSE Statement with exact value
	Run Keyword If    ${My_VALUE} > 200  keyword 1
	...  ELSE IF  ${My_VALUE} == 10      Keyword 2
	...  ELSE IF  ${My_VALUE} == 100     Keyword 3
	...  ELSE                            Keyword 4

*** Keywords ***
Keyword 1
	Log  I am keyword 1
Keyword 2
	Log  I am keyword 2
Keyword 3
	Log  I am keyword 3 - I AM EXACT VALUE
Keyword 4
	Log  I am keyword 4