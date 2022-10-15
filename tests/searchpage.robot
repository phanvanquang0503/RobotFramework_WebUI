*** Settings ***
Documentation  This is the suite for search function
Resource  ${EXECDIR}/resources/init.resource
Force Tags  Search
Suite Setup  Navigate Login Page And Login Successfully  ${URL}  ${USER.userName}  ${USER.passWord}
Suite Teardown  Close Browser

*** Test Cases ***
Search_001: Verify That User Can Be Search With Valid Data Successfully
    [Documentation]
    [Tags]  search_001
    Click Content management on the sidebar
    Click New Items
    Verify New items page is visible successfully
    Input Search with valid title
    Click on the Search Button
    Verify search successfully with valid data
    [Teardown]  Clear text input