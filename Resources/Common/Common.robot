*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Begin Web Test
   #Sending variables as arguments into a keyword
    open browser  ${START_URL}  ${BROWSER}
    maximize browser window

End Web Test
    delete all cookies
    close browser

Setup Test Suite data
    log  setting up test suite data

Clean up Test Suite data
    log  cleaning up after all tests are executed