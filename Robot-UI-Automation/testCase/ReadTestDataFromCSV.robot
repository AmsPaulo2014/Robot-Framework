*** Settings ***
Documentation    To validate login form
Library     SeleniumLibrary
Resource    resource.robot
Test Teardown    Close the browser
#This library is used to read the test data from csv file.
Library    DataDriver    file=/Users/neosoft/PycharmProjects/UI-Automation/TestData/loginData.csv        encoding=utf_8
#Test Template keyword is to perform paramaterisation on particular test
Test Template       validate successful login

#Notes:
#Goto Preference -> project -> python interpreter and install robotframework-dataDriver package.
#
#1."DataDriver" library is used to read the test data from csv file.
#2.We have to set the testData.csv file path
#3.Define 'Test Template' in *** Settings *** followed by keyword name.
#4.Need to write a test case name which have the parameters which refers the column name from csv file.
#5.variable name should be same as .csv file column name eg.${userName}
#6.In the .csv file instead of , use ; as a separator.


*** Test Cases ***
login with username ${userName} and password ${password}

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


