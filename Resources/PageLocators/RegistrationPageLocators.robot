*** Variables ***
#REGISTRATION PAGE LOCATORS
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