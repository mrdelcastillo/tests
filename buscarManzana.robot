*** Settings ***
Documentation  prueba de busqueda en gooogle.
Library  Selenium2Library

*** Variables ***
${URL}  https://www.google.com/
${BROWSER}  Chrome
${DELAY}  1
${criterio}  Manzana
${btn1}  name=btnK
${txb1}  id=lst-ib

*** Keywords ***
Abrir navegador
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed  ${DELAY}

Introducir busqueda
    Input Text  ${txb1}  ${criterio}

Click buscar
    [Documentation]  Click on Buscar Con Google Button.
    Click Button  ${btn1}

*** Test Cases ***
Buscar Manzana
    Abrir navegador
    Introducir busqueda
    Click buscar
