*** keywords ***

Verify New items page is visible successfully
  Page Should Contain Element  ${title}  News items
  Element Should Be Visible  ${table}

Input Search with valid title
    [Arguments]  ${title}
    Input Text  ${inputSearch}  ${title}

Click on the Search Button
    Click Element  ${buttonSearch}
    Sleep  3s

Verify search successfully with valid data
    [Arguments]  ${titleExpected}  ${languageExpected}  ${createOnExpected}
    Verify Header On The Item's Table
    Verify Contents Of Item  ${titleExpected}  ${languageExpected}  ${createOnExpected}

Verify Header On The Item's Table
    ${row}=    Get ELement Count    ${header}
    FOR  ${index}  IN  ${HEADER_TABLE}
        ${title}  Get Table Cell  ${header}  ${row}  1
        Should Be Equal  ${title}  ${index}[0]
        
        ${language}  Get Table Cell  ${header}  ${row}  2
        Should Be Equal  ${language}  ${index}[1]
        
        ${viewComments}  Get Table Cell  ${header}  ${row}  3
        Should Be Equal  ${viewComments}  ${index}[2]
        
        ${startDate}  Get Table Cell  ${header}  ${row}  4
        Should Be Equal  ${startDate}  ${index}[3]
        
        ${endDate}  Get Table Cell  ${header}  ${row}  5
        Should Be Equal  ${endDate}  ${index}[4]
        
        ${published}  Get Table Cell  ${header}  ${row}  6
        Should Be Equal  ${published}  ${index}[5]
        
        ${createOn}  Get Table Cell  ${header}  ${row}  7
        Should Be Equal  ${createOn}  ${index}[6]
        
        ${edit}  Get Table Cell  ${header}  ${row}  8
        Should Be Equal  ${edit}  ${index}[7]
    END
    Log Many  ${index}

Verify Contents Of Item
    [Arguments]  ${titleExpected}  ${languageExpected}  ${createOnExpected}
    ${titleXpath}=  Replace String  ${itemContent}  index  1
    ${languageXpath}=  Replace String  ${itemContent}  index  2
    ${createOnXpath}=  Replace String  ${itemContent}  index  7
    ${title}  Get Text   ${titleXpath}
    ${language}  Get Text   ${languageXpath}
    ${createOn}  Get Text   ${createOnXpath}
    ${list}  Create Dictionary  title=${title}  language=${language}  createOn=${createOn}
    FOR  ${index}  IN  ${list}
        Should Be Equal  ${list}[title]  ${titleExpected}
        Should Be Equal  ${list}[language]  ${languageExpected}
        Should Be Equal  ${list}[createOn]  ${createOnExpected}
    END

Verify Search Unsuccessfully With Keywords That Do Not Satisfy The Search Conditions
    [Arguments]  ${data}
    ${itemContent}=  Replace String  ${itemContent}  index  1
    ${noData}  Get Text   ${itemContent}
    Should Be Equal  ${noData}  ${data}

Verify Search Unsuccessfully With Special Keywords
    [Arguments]  ${data}
    ${itemContent}=  Replace String  ${itemContent}  index  1
    ${noData}  Get Text   ${itemContent}
    Should Be Equal  ${noData}  ${data}
