*** Settings ***
Documentation  This is the suite for search function
Resource  ${EXECDIR}/resources/init.resource
Force Tags  Search
Suite Setup  Navigate Login Page And Login Successfully  ${URL}  ${USER.userName}  ${USER.passWord}
Test Teardown  Clear Data On Input Search
Suite Teardown  Close Browser

*** Test Cases ***
Search_001: Search With Keywords That Satisfy The Search Conditions
    [Documentation]
    [Tags]  search_001
    Click Content Management On The Sidebar
    Click New Items
    Verify New Items Page Is Visible Successfully
    Input Search With Valid Title  ${Item.Item_1.title}
    Click On The Search Button
    Verify Search Successfully With Valid Data  ${Item.Item_1.title}  ${Item.Item_1.language}  ${Item.Item_1.createdOn}

Search_002: Search With Keywords That Do Not Satisfy The Search Conditions
    [Documentation]
    [Tags]  search_002
    Verify New Items Page Is Visible Successfully
    Input Search With Valid Title  ${Item.Item_2.language}
    Click On The Search Button
    Verify Search Unsuccessfully With Keywords That Do Not Satisfy The Search Conditions  ${Item.ContentData.noData}

Search_003: Search With Special Keywords Like: %, ", 0, _, space...
    [Documentation]
    [Tags]  search_003
    Verify New items page is visible successfully
    Input Search with valid title  ${Item.ContentData.specialSearch}
    Click On The Search Button
    Verify Search Unsuccessfully With Keywords That Do Not Satisfy The Search Conditions  ${Item.ContentData.noData}