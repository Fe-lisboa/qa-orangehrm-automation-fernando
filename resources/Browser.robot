*** Settings ***
Library    Browser
Resource    Variables.robot
*** Keywords ***
Open OrangeHRM
    New Browser    chromium    headless=${true}
    New Context
    New Page    ${URL}
    Set Browser Timeout    10s

Close OrangeHRM
    Close Browser
