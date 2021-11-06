## Robotframework training
#-------------------------------
- few important commands
    * use this command to install robotframework :
    * pip install robotframework
    * pip install robotframework-seleniumlibrary
    * to see all the installed packages on pip use : pip list
    * few commands to run your tests using terminal or CMD :
    * to run specific test file:
    * robot test/testfilename.robot
    * to generate results report:
    * robot -d results test/testfilename.robot
    * to run the test with specific browser:
    * robot -d results -v BROWSER:chrome tests
    * to run all the test files in tests folder:
    * robot -d results tests
    * to run specific tags:
    * robot -d results -i smoke tests/testcasename.robot
    * to give a title to the test execution report:
    * robot -d results -N"REGRESSION RUN" tests/testcasename.robot
    * to show the debug logs either sending the log level in cmd 
    * or in the script itself -> Set Log Level Debug
    * robot -d results -L debug tests
    * robot -d results --l debug tests
    * pass environment and browser variables in cmd 
    * robot -d results -v BROWSER:firefox -v ENVIRONMENT:formy Tests/01__registration_tests/01__User_register.robot

  
    
  

## The default structure of the robotframework project should be as below:
#-------------------------------
  ###ProjectBase
     - /Tests -> test scripts 
        * UserRegister.robot 
        * UserLogin.robot
        * searchForProduct.robot
        * addProductToCart.robot
     - /Resources
        * Common.robot -> setup and tearDown keywords
        * Register.robot
        * login.robot
        * search.robot
        * /PO-PageObjects
          * HomePage.robot
          * LoginPage.robot
          * SearchResultsPage.robot
          * ProductsPage.robot
          * CartPage.robot
     - /Results


#Variables Scope
#-------------------------------
  * Global-accessible from all tests & keywords
  * Suite-accessible to tests in the suite only
  * Test case-accessible within the test case only
  * keyword-only accessible within the keyword
  * Precedence
     * Command > script > keyword
  * Naming Convention
    * Global- @{UPPER_CASE}
    * testcase/keyword- @{lower_case}
    
#Architectural Vision
  #-------------------------------
    
* Script
  * Common
  * App Keywords
    PageObject1 PageObject2
* Selenium Library
* Selenium Web drivers

#BUILT-IN library
- log/Comment
- Conversions
- "Run Keyword(s)"Options
- Repeat keyword
- set variable (test, suit, global)
- Should (Contain | be equal) / should not
- sleep
- wait until keyword succeeds (!)

#Folder Structure in robot framework
- if i have my tests in a sub folder in tests folder 
- use : ../../Resources/Common.robot
- if the tests are in the tests folder and not a sub folder
- use : ../Resources/Common.robot