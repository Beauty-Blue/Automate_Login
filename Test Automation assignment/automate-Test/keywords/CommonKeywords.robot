*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Wait until element is ready then input text
    [Arguments]    ${locator}    ${text}
    Wait Until Element Is Visible    ${locator}    5s
    Wait Until Element Is Enabled    ${locator}    5s
    Clear Element Text    ${locator}
    Input Text    ${locator}    ${text}

Wait until element is ready then click element
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    5s
    Wait Until Element Is Enabled    ${locator}    5s
    Click Element    ${locator}