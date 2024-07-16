*** Settings ***
Documentation     All the page objects and keywords of landing page
Library           SeleniumLibrary
*** Variables ***
${avatarIcon}    xpath://div[@data-testid='avatar-component']

*** Keywords ***
validate user login successfully
    Wait Until Element Is Visible    ${avatarIcon}