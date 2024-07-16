*** Settings ***
Documentation    Perform allotment test script execution.
Library    SeleniumLibrary
#Following syntax is used to call object repo
Resource   ../ObjectRepository/LoginPage.robot
Resource   ../ObjectRepository/LandingPage.robot
Resource    BaseClass.robot


*** Test Cases ***
Perform allotment successful login operation
    Launch the browser and open the website    ${marecrewUrl}
    enter valid user credentials
    Validate User Login Successfully

Perform allotment unsuccessful login operation
    #If same keyword is define more than one Object repository class
    #then call that method followed by Obj. repo. class name
    LoginPage.Open The Website
    Enter Invalid User Credentials
    Validate User Login Successfully

