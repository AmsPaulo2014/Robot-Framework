*** Settings ***
Documentation     All the page objects and keywords of login page
Library           SeleniumLibrary

*** Variables ***
${userNameTextField}    id:username
${passwordTextField}    id:password
${loginButton}        xpath://button[@type='submit']
*** Keywords ***
open the website 
    Create Webdriver  Chrome
    Go to     https://ca-stg.marecrew.com/search?searchTerm=&searchEntities=Seafarer
    Set Selenium Implicit Wait     20
enter valid user credentials
    Wait Until Element Is Visible        ${userNameTextField}
    Input Text    ${userNameTextField}    userlevel5
    Input Password    ${passwordTextField}    Test1234!
    Click Button    ${loginButton}
validate invalid user credentials error appear
    Wait Until Page Contains    Invalid username or password.
enter invalid user credentials
    Wait Until Element Is Visible        ${passwordTextField}
    Input Text    ${userNameTextField}    userlevel5
    Input Password    ${passwordTextField}    Test1234
    Click Button    ${loginButton}