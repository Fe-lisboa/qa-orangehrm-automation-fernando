*** Settings ***
Resource    Browser.robot

*** Keywords ***
Go To PIM
    Click    text=PIM
    Wait For Elements State    text=Employee Information    visible

Add Employee
    Click    text=Add Employee
    Fill Text    input[name="firstName"]    John
    Fill Text    input[name="lastName"]     Doe
    Click    button:has-text("Save")
    Wait For Elements State    h6:has-text("Personal Details")    visible

Search Employee
    Go To PIM
    # Preenche o campo Employee Name corretamente (primeiro "Type for hints...")
    Fill Text    //label[text()="Employee Name"]/../following-sibling::div//input    John
    Click    button:has-text("Search")
    # Interage com o primeiro elemento que contém "John Doe"
    Click    text=John Doe >> nth=0
    Wait For Elements State    text=John Doe >> nth=0    visible
