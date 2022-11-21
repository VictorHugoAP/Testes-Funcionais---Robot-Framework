*** Settings ***
Documentation    Dashboard Page

Library    Browser

*** Keywords ***
User logged
    [Arguments]    ${header_text}
    Get Text       .header-content strong    equal    ${header_text}

Search
    [Arguments]    ${content}
    Fill Text             input[id=keyword]    ${content}

    Click                 button[type=submit]

Select Sticker
    [Arguments]    ${name}
    Click    //img[@alt="${name}"]/..

Contact Button
    Click    button >> text=Entrar em contato

WhatsApp Stricker message validation
    [Arguments]     ${sticker_name}
    ${expected_message}    Set Variable
    ...    Oi, achei o seu contato no Trade Sticker. Estou interessado(a) na figurinha do ${sticker_name}, bora negociar?
    Switch Page    NEW
    Wait For Elements State    p >> text=${expected_message}    visible    5000
          
