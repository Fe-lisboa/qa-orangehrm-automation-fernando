*** Settings ***
Resource    ../resources/LoginPage.robot
Resource    ../resources/PIMPage.robot
Resource    ../resources/Browser.robot

*** Test Cases ***
Add New Employee
    Login With Valid Credentials
    Go To PIM
    Add Employee
    [Teardown]    Close OrangeHRM
