*** Settings ***
Library    String
*** Test Cases ***
FOR Loop with Upper bounds range
	# This gives us a 0 based range
	FOR  ${index}   IN RANGE  5
		Do something  ${index}
		${RANDOM_STRING} =  generate random string    ${index}
		Log  ${RANDOM_STRING}
	END
For Loop with start and finish range
	FOR  ${index}  IN RANGE  1  4
		Do Something    ${INDEX}
		${RANDOM_STRING} =  generate random string    ${index}
		Log  ${RANDOM_STRING}
	END
For Loop with start and finish range and Step range
	FOR  ${index}  IN RANGE  1  10  2
		Do Something    ${INDEX}
		${RANDOM_STRING} =  generate random string    ${index}
		Log  ${RANDOM_STRING}
	END
For Loop with list
	@{ITEMS} =  Create List    item 1  item 2  item 3
	FOR  ${item}  IN  @{ITEMS}
		Log  ${item}
	END
Exit a FOR loop
	@{ITEMS} =  Create List    item 1  item 2  item 3  item 4
	FOR  ${item}  IN  @{ITEMS}
		Log  ${item}
		Run Keyword If    "${item}" == "item 3"  Exit For Loop
		Log  Didn't Exit Yet!!
	END
	Log  NOW We're out of the loop
Reapet a keyword many times
	Repeat Keyword    5  A Reapeatable keyword
	Repeat Keyword    2 times  A Reapeatable keyword
	Repeat Keyword    2 x  A Reapeatable keyword
	Repeat Keyword    1 s  A Reapeatable keyword
*** Keywords ***
Do something
	[Arguments]  ${PassedIndex}
	Log  I Was passed a value of ${PassedIndex}!
A Reapeatable keyword
	Log  I am being repeatable!!