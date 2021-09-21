*** Settings ***
Resource    resource.robot

*** Test Cases ***
Search Not Found
    Open Browser to Main Page
    Main Page Should Be Open
    Input Keyword   Jojo
    Submit Keyword
    Search Result Should Not Be Found
    [Teardown]  Close Browser