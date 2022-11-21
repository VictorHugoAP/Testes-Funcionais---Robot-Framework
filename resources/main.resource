*** Settings ***
Documentation    Arquivo Principal do Projeto

Library    Browser

Resource    pages/dash.resource
Resource    pages/login.resource

*** Keywords ***
Do login
        Go To Page
        Submit Credentials                      papito@gmail.com    vaibrasil
        User logged                             Aquela figurinha incrível a um clique de distância.

Start Test
    New Browser        headless=false
