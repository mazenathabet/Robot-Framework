*** Variables ***
${My_VARIABLE} = I am global variable
@{MY_LIST_VARIABLES} =  Global 1  Global 2  Global 3
*** Test Cases ***
Set a variable in the test case
	${new_variable} =  set variable    This is my new variable    #local variable
	@{new_list_variables} =  create list    item1  item2  item3  # list of local variables
	log  ${new_variable}
	log  ${new_list_variables}[0]
	log  ${new_list_variables}[1]
	log  ${new_list_variables}[2]
Variable demonstration
	log  ${My_VARIABLE} #global variable
	log  ${MY_LIST_VARIABLES}[0]
	log  ${MY_LIST_VARIABLES}[1]
	log  ${MY_LIST_VARIABLES}[2]
