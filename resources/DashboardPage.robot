*** Settings ***
Resource    Browser.robot

*** Keywords ***
Is On Dashboard
    Wait For Elements State    text=Dashboard    visible
