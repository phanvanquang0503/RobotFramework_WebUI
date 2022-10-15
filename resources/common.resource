*** Settings ***
Resource  ${EXECDIR}/keywords/init.resource
*** Variables ***
${Browser}  Chrome

*** Keywords ***
Navigate Login Page And Login Successfully
    [Arguments]  ${url}  ${username}  ${password}
    Open Browser  ${url}  ${Browser}
    Maximize Browser Window
    Input Text  ${EMAIL}  ${username}
    Input Text  ${HOME_PAGE.PASSWORD.INPUT}  ${password}
    Click Button    ${BUTTON_LOGIN}
    Sleep  3

Click Content management on the sidebar
    Wait Until Element Is Visible  ${contentManagerment}  5s
    Click Element  ${contentManagerment}
    Sleep  3

Click New Items
    ${item}=  Replace String  ${newItems}  items  News items
    Sleep  3s
    Click Element  ${item}
    Sleep  5s