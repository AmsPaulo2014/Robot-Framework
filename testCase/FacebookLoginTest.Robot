*** Settings ***
Documentation    Perform facebook login operation
Library    SeleniumLibrary
#Here we are calling 'open facebook url' from resource.robot file.
Resource    resource.robot
Test Setup    open facebook url
Test Teardown    Close the browser

*** Test Cases ***
Invalid facebook login test
    [Tags]    REGRESSION
    enter invalid user credentials and click on login button
    validate expected error message is display

*** Keywords ***
enter invalid user credentials and click on login button
    Wait Until Element Is Visible    email
    Input Text    email     ${invalid_userName}
    Input Password    pass        ${invalid_password}
    Click Button    xpath://button[@name='login']
validate expected error message is display
    Wait Until Element Is Visible     xpath://div[@role='alert']/div[1]
    Element Text Should Be    xpath://div[@role='alert']/div[1]        Wrong credentials


