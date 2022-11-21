*** Settings ***
Documentation    Login Page

Library    Browser

*** Keywords ***
Go To Page
    New Page           https://trade-sticker-dev.vercel.app

Submit Credentials
    [Arguments]    ${email}    ${password}
    Fill Text          input[name=email]       ${email}
    Fill Text          input[name=password]    ${password}
    Click              button >> text=Entrar

Invalid Case
    [Arguments]    ${expected_text}
    ${locator}    Set Variable    .Toastify__toast-body >> text=${expected_text}

    Wait For Elements State    ${locator}    visible    2
    Sleep    1
    Take Screenshot    