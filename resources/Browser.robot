*** Settings ***
Library    Browser

*** Keywords ***
Open OrangeHRM
    New Browser    chromium    headless=${false}
    New Context
    New Page    ${URL}
    Set Browser Timeout    10s

Close OrangeHRM
    Close Browser
