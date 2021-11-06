*** Variables ***
#HOME PAGE LOCATORS
${REGISTRATION_COMPLETED_LABEL} =  xpath://div[contains(text(),'registration completed')]
${LOGOUT_LINK} =  link:Log out
${REGISTER_LINK} =  xpath=//a[normalize-space()='Register']
${LOGIN_LINK} =  css:.ico-login
#LOGIN LOCATORS
${SIGN_IN_LABEL} =  xpath://h1[normalize-space()='Welcome, Please Sign In!']
${EMAIL_BOX} =  name:Email
${PASSWORD_BOX} =  id:Password
${LOGIN_BUTTON} =  xpath://button[normalize-space()='Log in']
${REMEMBER_ME_CHECK} =  id:RememberMe
${INCORRECT_USER_LABEL} =  css:div[class='message-error validation-summary-errors'] li
${EMAIL_VALIDATION_ERROR} =  css:span[id="Email-error"]
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