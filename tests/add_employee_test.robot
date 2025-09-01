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

Search Employee With Empty Fields
    [Documentation]    Realiza busca sem preencher campos, deve exibir todos os funcionários
    Login With Valid Credentials
    Go To PIM
    Click    button:has-text("Search")
    Wait For Elements State    xpath=//div[@class="oxd-table-body"]    visible
    [Teardown]    Close OrangeHRM

Search Nonexistent Employee
    [Documentation]    Busca um funcionário inexistente, valida a mensagem "No Records Found"
    Login With Valid Credentials
    Go To PIM
    Fill Text    xpath=//label[text()="Employee Name"]/../following-sibling::div//input    ${EMP_NON_EXISTENT}
    Click    button:has-text("Search")
    Wait For Elements State    xpath=//span[text()="No Records Found"]    visible
    [Teardown]    Close OrangeHRM