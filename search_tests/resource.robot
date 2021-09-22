** Settings **
Documentation   A resource file with reusable keywords and variables.
Library         SeleniumLibrary

*** Variables ***
${URL}                      https://skillacademy.com/
${DELAY}                    0
${BROWSER}                  Chrome

*** Keywords ***
Open Browser to Main Page
    Open Browser    ${URL}  ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed      ${DELAY}
    Main Page Should Be Open

Main Page Should Be Open
    Title Should Be     Kursus & Kelas Online Bersertifikat Terbaik | Skill Academy

Input Keyword
    [Arguments]                         ${keyword}
    Input text                          xpath://input[@data-testid="search-input-field"]     ${keyword}
    Element Attribute Value Should Be   xpath://input[@data-testid="search-input-field"]    value   ${keyword}

Submit Keyword
    Click Element    xpath://div[@data-testid="search-icon"]

Search Result Should Be Found
    [Arguments]             ${keyword}
    Location Should Be      ${URL}search?keyword=${keyword}
    Wait Until Element Is Visible   xpath://div[@data-testid="course-card"]
    Element Should Be Visible   xpath://div[@data-testid="course-card"]

Search Result Should Not Be Found
    Location Should Be      ${URL}search?keyword=Jojo
    Wait Until Element Is Visible   xpath://div[@data-testid="empty-result-card"]
    Element Should Be Visible   xpath://div[@data-testid="empty-result-card"]

Search Can't Be Done
    Location Should Be      ${URL}