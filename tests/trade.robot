*** Settings ***
Documentation    Teste de Negociação de figurinhas

Resource    ../resources/main.resource

Test Setup    Start Test

*** Variables ***
${name}    Neymar Jr

*** Test Cases ***
Deve negociar a figurinha Neymar Jr. Legend
    Do login  
    Search                                  Legend
    Select Sticker                          ${name}
    Contact Button
    WhatsApp Stricker message validation    ${name}

    