*** Settings ***
Documentation    To validate login form
Library     SeleniumLibrary
Resource    resource.robot
Test Teardown    Close the browser
#Test Template keyword is used to perform paramaterisation on particular test
Test Template       validate successful login

*** Test Cases ***            username        password
invalid user name             user5           Test1234!
invalid password              userlevel5      test1234

*** Keywords ***
validate successful login
    [Arguments]    ${userName}    ${password}
    open the website
    enter user credentials        ${userName}    ${password}
    validate login fail error message appear
open the website 
    Create Webdriver  Chrome
    Go to     https://ca-stg.marecrew.com/search?searchTerm=&searchEntities=Seafarer
enter user credentials
    [Arguments]    ${userName}    ${password}
    Wait Until Element Is Visible        id:password
    Input Text    id:username    ${userName}
    Input Password    id:password    ${password}
    Click Button    xpath://button[@type='submit']
validate user login successfully
    Wait Until Element Is Visible    xpath://div[@data-testid='avatar-component']
enter invalid user credentials
    Wait Until Element Is Visible        id:password
    Input Text    id:username    userlevel5
    Input Password    id:password    Test1234
    Click Button    xpath://button[@type='submit']

validate login fail error message appear
    Element Should Be Visible    xpath://div[contains(text(),'Invalid username or password.')]


