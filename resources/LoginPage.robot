*** Settings ***
Resource    Browser.robot
Resource    Variables.robot
Library     Browser

*** Keywords ***
Login With Valid Credentials
    Open OrangeHRM
    Fill Text    input[name="username"]    ${USERNAME}
    Fill Text    input[name="password"]    ${PASSWORD}
    Click    button[type="submit"]
    Wait For Elements State    h6:has-text("Dashboard")    visible

Login With Invalid Username
    [Arguments]    ${invalid_user}=${INVALID_USERNAME}
    Open OrangeHRM
    Fill Text    input[name="username"]    ${invalid_user}
    Fill Text    input[name="password"]    ${PASSWORD}
    Click    button[type="submit"]
    Wait For Elements State    div.oxd-alert-content--error    visible
    ${error}=    Get Text    div.oxd-alert-content--error
    Should Be Equal    ${error}    ${LOGIN_ERROR_MSG}

Login With Invalid Password
    [Arguments]    ${invalid_pass}=${INVALID_PASSWORD}
    Open OrangeHRM
    Fill Text    input[name="username"]    ${USERNAME}
    Fill Text    input[name="password"]    ${invalid_pass}
    Click    button[type="submit"]
    Wait For Elements State    div.oxd-alert-content--error    visible
    ${error}=    Get Text    div.oxd-alert-content--error
    Should Be Equal    ${error}    ${LOGIN_ERROR_MSG}

Login With Empty Fields
    Open OrangeHRM
    Click    button[type="submit"]

    # Valida campo Username
    Wait For Elements State    css=input[name='username'] >> xpath=../following-sibling::span[contains(@class,'oxd-input-field-error-message')]    visible
    ${username_error}=    Get Text    css=input[name='username'] >> xpath=../following-sibling::span[contains(@class,'oxd-input-field-error-message')]
    Should Be Equal    ${username_error}    Required

    # Valida campo Password
    Wait For Elements State    css=input[name='password'] >> xpath=../following-sibling::span[contains(@class,'oxd-input-field-error-message')]    visible
    ${password_error}=    Get Text    css=input[name='password'] >> xpath=../following-sibling::span[contains(@class,'oxd-input-field-error-message')]
    Should Be Equal    ${password_error}    Required