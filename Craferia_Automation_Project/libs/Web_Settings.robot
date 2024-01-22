*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome

*** Keywords ***
Open Browser to Craferia
    Open Browser    ${BASE_URL}    browser=${BROWSER}
