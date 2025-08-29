*** Settings ***
Resource    ../resources/LoginPage.robot
Resource    ../resources/PIMPage.robot
Resource    ../resources/Browser.robot

*** Test Cases ***
Search For Employee
    Login With Valid Credentials
    Search Employee
    [Teardown]    Close OrangeHRM
