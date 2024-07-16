*** Settings ***
Documentation    This class is used to define common variables/method
Library    SeleniumLibrary

*** Variables ***
${marecrewUrl}    https://ca-stg.marecrew.com/search?searchTerm=&searchEntities=Seafarer
${implicitWaitInSeconds}    10
${browser}    Chrome
    
*** Keywords ***
Launch the browser and open the website
    [Arguments]    ${webUrl}
    Launch the browser
    open the website     ${webUrl}
   
Launch the browser
    Create Webdriver    ${browser}
    Set Selenium Implicit Wait    ${implicitWaitInSeconds}
   
open the website
    [Arguments]    ${url}
    Go To   ${url}