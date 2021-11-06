*** Variables ***
#LOGIN LOCATORS
${SIGN_IN_LABEL} =  xpath://h1[normalize-space()='Welcome, Please Sign In!']
${EMAIL_BOX} =  name:Email
${PASSWORD_BOX} =  id:Password
${LOGIN_BUTTON} =  xpath://button[normalize-space()='Log in']
${REMEMBER_ME_CHECK} =  id:RememberMe
${INCORRECT_USER_LABEL} =  css:div[class='message-error validation-summary-errors'] li
${EMAIL_VALIDATION_ERROR} =  css:span[id="Email-error"]
