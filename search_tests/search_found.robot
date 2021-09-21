*** Settings ***
Resource    resource.robot

*** Test Cases ***
Search Found
    Open Browser to Main Page
    Main Page Should Be Open
    Input Keyword   Belajar
    Submit Keyword
    Search Result Should Be Found
    [Teardown]  Close Browser