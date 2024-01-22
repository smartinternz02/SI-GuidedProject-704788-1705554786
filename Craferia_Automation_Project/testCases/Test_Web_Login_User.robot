*** Settings ***
Library    SeleniumLibrary
Resource   ../libs/Web_Settings.robot

*** Variables ***
${craferia_user_info}    Create Dictionary    username=automationpractic@gmail.com    password=Test123@

*** Test Cases ***
CRAFERIA-111: Login to Craferia application
    [Tags]    Smoke    Login

    Setup Browser
    Login as ${craferia_user_info['username']}    ${craferia_user_info['password']}
    Verify the Craferia Dashboard page is visible
    Log out

*** Keywords ***
Setup Browser
    Open Browser    ${BASE_URL}    ${BROWSER}    ${HEADLESS}

Login as
    [Arguments]    ${username}    ${password}
    Go To    ${BASE_URL}/login
    Input Text    id=email    ${username}
    Input Text    id=password    ${password}
    Click Button    css=.btn-login

Verify the Craferia Dashboard page is visible
    Wait Until Element Is Visible    css=.dashboard

Log out
    Click Link    css=.logout
    Wait Until Element Is Visible    css=.login-form
    Close Browser
