*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${HOME_DECOR_LINK}    xpath=//a[@href='/home-decor/']

*** Keywords ***
Click Home Decor Link
    Click Element    ${HOME_DECOR_LINK}
