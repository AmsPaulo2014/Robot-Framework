*** Settings ***
Documentation      Perform allotment web automation
Library            SeleniumLibrary
Library            Collections
Resource           resource.robot
Test Teardown    Close the browser

*** Test Cases ***
validate user navigate on vessel page
    [Tags]    REGRESSION     SMOKE
    open an allotment website
    enter allotment user credentials
    validate user login successfully
    navigate on vessel page
    Search the keyword on vessel page     MSC D
    Select the Vessel    MSC DUBAI VII
    validate user navigate on vessel page     MSC DUBAI VII

*** Keywords ***
Search the keyword on vessel page
    [Arguments]    ${searchKeyword}
    Wait Until Element Is Visible   datagrid-search
    Wait Until Element Is Enabled    datagrid-search
    Input Text    datagrid-search      ${searchKeyword}
Select the Vessel
         [Arguments]     ${vessel}
         Wait Until Element Is Visible         xpath://button[@aria-label='Select columns']    
         ${getVesselNames}=     Get Webelements        xpath://div[@role='row']//a
         ${index} =     Set Variable    1
            FOR     ${getVessel}     IN    @{getVesselNames}
                Exit For Loop If       '${vessel}' == '${getVessel.text}'
                ${index}=     Evaluate    ${index} + 1
            END
         Click Button       xpath:(//div[@role='row']//a)[${index}]

validate user navigate on vessel page
     [Arguments]  ${name}
      Wait Until Element Is Visible    xpath://div[@data-testid='avatar-card']
     ${getVessel} =     Get Text    xpath://div[@data-testid='avatar-card']/following-sibling::div//h6
        Should Be Equal    ${name}    ${getVessel}
