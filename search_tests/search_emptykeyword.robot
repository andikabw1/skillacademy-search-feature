*** Settings ***
Resource    resource.robot

*** Test Cases ***
Search with Empy Keyword
    Open Browser to Main Page
    Main Page Should Be Open
    Input Keyword   ${EMPTY}
    Submit Keyword
    Search Can't Be Done
    [Teardown]  Close Browser