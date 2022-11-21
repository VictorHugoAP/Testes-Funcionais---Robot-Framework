*** Settings ***
Documentation        Login tests

Resource    ../resources/main.resource

Task Setup    Start Test

*** Variables ***
${header_text}    Aquela figurinha incrível a um clique de distância.

*** Test Cases ***
Deve logar com sucesso
    Go To Page
    Submit Credentials    papito@gmail.com    vaibrasil
    User logged           ${header_text}

Não deve logar com dados incorretos
    Go To Page
    Submit Credentials    papito@gmail.com    vaibras
    Invalid Case          Credenciais inválidas, tente novamente!
