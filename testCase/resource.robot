*** Settings ***
Documentation         A resource file with reusable keywords and variables.
Library        SeleniumLibrary

*** Variables ***
${invalid_userName}    amol@test.com
${invalid_password}    test@1234
${facebook_url}        https://www.facebook.com/login/
${allotment_staging}   https://ca-stg.marecrew.com/search?searchTerm=&searchEntities=Seafarer
${demoWebsite}    https://rahulshettyacademy.com/AutomationPractice/

*** Keywords ***
open facebook url
    Create Webdriver    Chrome
    Maximize Browser Window
    Go To    ${facebook_url}
Close the browser
        Close Browser
open an allotment website
    Create Webdriver  Chrome
    Maximize Browser Window
    Go to     ${allotment_staging}
    Set Selenium Implicit Wait     20
enter allotment user credentials
    Wait Until Element Is Visible        id:username
    Input Text    id:username    userlevel5
    Input Password    id:password    Test1234!
    Click Button    xpath://button[@type='submit']
validate user login successfully
    Wait Until Element Is Visible    xpath://div[@data-testid='avatar-component']

navigate on vessel page
    Wait Until Element Is Visible      xpath://a/p[text()='Vessels']        10
    Click Element     xpath://a/p[text()='Vessels']
    
Launch the chrome browser and open the url
    [Arguments]    ${url}
    Create Webdriver    Chrome 
    Maximize Browser Window
    Go To    ${url}
    Set Selenium Implicit Wait    10