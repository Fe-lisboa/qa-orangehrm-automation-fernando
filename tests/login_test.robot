*** Settings ***
Resource    ../resources/LoginPage.robot
Resource    ../resources/Browser.robot

*** Test Cases ***
# ======================
# Testes Positivos
# ======================
Login Successfully
    [Documentation]    Testa login com credenciais válidas
    Login With Valid Credentials
    [Teardown]    Close OrangeHRM

# ======================
# Testes Negativos
# ======================
Login Invalid Username
    [Documentation]    Testa login com usuário inválido
    Login With Invalid Username
    [Teardown]    Close OrangeHRM

Login Invalid Password
    [Documentation]    Testa login com senha inválida
    Login With Invalid Password
    [Teardown]    Close OrangeHRM

Login Empty Fields
    [Documentation]    Testa login sem preencher usuário e senha
    Login With Empty Fields
    [Teardown]    Close OrangeHRM

Logout From OrangeHRM
    [Documentation]    Realiza logout do sistema
    Login With Valid Credentials
    Click    xpath=//p[@class="oxd-userdropdown-name"]
    Click    text=Logout
    Wait For Elements State    input[name="username"]    visible