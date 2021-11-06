*** Settings ***
Library    SeleniumLibrary
*** Variables ***
############################################
## WebElements
############################################
${GENDER_RADIO} =  Gender
${FNAME_BOX} =  id:FirstName
${LNAME_BOX} =  id:LastName
${DAY_LIST} =  name:DateOfBirthDay
${MONTH_LIST} =  name:DateOfBirthMonth
${YEAR_LIST} =  name:DateOfBirthYear
${EMAIL_BOX} =  id:Email
${COMPANY_BOX} =  css:#Company
${PASSWORD_BOX} =  id:Password
${CONFIRM_PASSWORD_BOX} =  id:ConfirmPassword
${REGISTER_BUTTON} =  id:register-button
${EMAIL_ALREADY_USED_LABEL} =  xpath://li[contains(text(),'The specified email already exists')]
*** Keywords ***
Fill Registration data and click register
	[Arguments]  ${UserData}
	select radio button    ${GENDER_RADIO}   ${UserData.Gender}
    wait until element is visible    ${FNAME_BOX}
    input text    ${FNAME_BOX}  ${UserData.FName}   # variable with index 0 in the @{full_name} list of variables
    wait until element is visible    ${LNAME_BOX}
    input text    ${LNAME_BOX}   ${UserData.lName}   # variable with index 1 in the @{full_name} list of variables
    select from list by value      ${DAY_LIST}  ${UserData.Day}
    select from list by label    ${MONTH_LIST}  ${UserData.Month}
    select from list by value    ${YEAR_LIST}    ${UserData.Year}
    wait until element is visible  ${EMAIL_BOX}
    input text  ${EMAIL_BOX}  ${UserData.Email}
    wait until element is visible    ${COMPANY_BOX}
    input text    ${COMPANY_BOX}  ${UserData.Company}
    wait until element is visible    ${PASSWORD_BOX}
    input password    ${PASSWORD_BOX}  ${UserData.Password}
    wait until element is visible    ${CONFIRM_PASSWORD_BOX}
    input password    ${CONFIRM_PASSWORD_BOX}  ${UserData.Password}
    click element    ${REGISTER_BUTTON}

Verfiy I cant use registred email again
	Wait Until Page Contains Element    ${EMAIL_ALREADY_USED_LABEL}
	page should contain element    ${EMAIL_ALREADY_USED_LABEL}

Fill Registration data and click register using csv
	[Arguments]  ${UserData}
	select radio button    ${GENDER_RADIO}   ${UserData[0]}
    wait until element is visible    ${FNAME_BOX}
    input text    ${FNAME_BOX}  ${UserData[1]}   # variable with index 0 in the @{full_name} list of variables
    wait until element is visible    ${LNAME_BOX}
    input text    ${LNAME_BOX}   ${UserData[2]}   # variable with index 1 in the @{full_name} list of variables
    select from list by value      ${DAY_LIST}  ${UserData[6]}
    select from list by label    ${MONTH_LIST}  ${UserData[7]}
    select from list by value    ${YEAR_LIST}    ${UserData[8]}
    wait until element is visible  ${EMAIL_BOX}
    input text  ${EMAIL_BOX}  ${UserData[3]}
    wait until element is visible    ${COMPANY_BOX}
    input text    ${COMPANY_BOX}  ${UserData[4]}
    wait until element is visible    ${PASSWORD_BOX}
    input password    ${PASSWORD_BOX}  ${UserData[5]}
    wait until element is visible    ${CONFIRM_PASSWORD_BOX}
    input password    ${CONFIRM_PASSWORD_BOX}  ${UserData[5]}
    click element    ${REGISTER_BUTTON}