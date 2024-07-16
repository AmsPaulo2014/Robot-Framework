*** Settings ***
Documentation      Perform allotment web automation
Library            SeleniumLibrary
Library            Collections
Resource           resource.robot

*** Test Cases ***
validate successful login
    [Tags]    REGRESSION    SMOKE
    open an allotment website
    enter allotment user credentials
    validate user login successfully
    navigate on vessel page
    validate vessel page table column names

*** Keywords ***

validate vessel page table column names
     Wait Until Element Is Visible         xpath://button[@aria-label='Select columns']
     # Create one list 'expectedColumnNames' and add column names in this list
     # List should be created with @{}
     @{expectedColumnNames} =     Create List        Vessel Name     IMO      Crewing Group    Status
     # get webelements and stroes in one variable
     ${elements} =     Get WebElements          xpath://div[@role='columnheader']/div/div/div/div
     @{actualColumnNames} =         Create List
     #Write for loop to get the name of the column from webElements
     # get ${elements} into list  @{elements}
     FOR    ${element}     IN     @{elements}
            Log    ${element.text}
            #To call the list we can use ${}.
            # Note - @{} is used to create list only
            Append To List    ${actualColumnNames}     ${element.text}
     END
            Lists Should Be Equal    ${expectedColumnNames}    ${actualColumnNames}