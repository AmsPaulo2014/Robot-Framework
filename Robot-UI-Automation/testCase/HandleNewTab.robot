*** Settings ***
Documentation     Handle new tab in robot f/w
Library    SeleniumLibrary
Resource       resource.robot
Test Teardown    Close the browser

*** Test Cases ***
Navigate to new tab and validate email address
    [Tags]    REGRESSION    SMOKE
    Launch the chrome browser and open the url    ${demoWebsite}
    Click on open tab and switch to new tab
    validate user navigate on new tab
    get helpdesk email id and validate
    close new tab
    navigate to main tab and validate

*** Keywords ***
Click on open tab and switch to new tab
    Click Element    opentab
    Switch Window    NEW

validate user navigate on new tab
    Element Should Be Visible    xpath://div[@class='button float-left']/a
    Element Text Should Be    xpath://div[@class='button float-left']/a        Access all our Courses

get helpdesk email id and validate
    ${getHelpdeskEmail} =     Get Text    xpath://div[@class='cont']/span
    #Declare the variable as a global
    Set Global Variable
    #Log is used to log the respected action in log file
    Log    ${getHelpdeskEmail}
    Should Be Equal As Strings    info@qaclickacademy.com    ${getHelpdeskEmail}

close new tab
    Close Window
    
navigate to main tab and validate
    Switch Window    MAIN
    Element Should Be Visible    xpath://h1[text()='Practice Page']
    Sleep    5

    
        


