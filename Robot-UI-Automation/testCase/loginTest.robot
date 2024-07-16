*** Settings ***
Documentation    To validate login form
Library     SeleniumLibrary
Resource    resource.robot
Test Teardown    Close the browser

*** Test Cases ***
validate successful login
    [Tags]    REGRESSION    SMOKE
    open the website
    enter user credentials
    validate user login successfully

validate unsuccessful login
     [Tags]    REGRESSION
    open the website
    enter invalid user credentials
   validate invalid user credentials error appear

*** Keywords ***
open the website 
    Create Webdriver  Chrome
    Go to     https://ca-stg.marecrew.com/search?searchTerm=&searchEntities=Seafarer
    Set Selenium Implicit Wait     20
enter user credentials
    Wait Until Element Is Visible        id:password
    Input Text    id:username    userlevel5
    Input Password    id:password    Test1234!
    Click Button    xpath://button[@type='submit']
validate invalid user credentials error appear
    Wait Until Page Contains    Invalid username or password.
validate user login successfully
    Wait Until Element Is Visible    xpath://div[@data-testid='avatar-component']
enter invalid user credentials
    Wait Until Element Is Visible        id:password
    Input Text    id:username    userlevel5
    Input Password    id:password    Test1234
    Click Button    xpath://button[@type='submit']


