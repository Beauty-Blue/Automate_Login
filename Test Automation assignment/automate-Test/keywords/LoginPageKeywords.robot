*** Settings ***
Library         SeleniumLibrary
Resource        CommonKeywords.robot

*** Keywords ***
user login to herokuapp platform with
    [Arguments]    ${username}    ${password}
    CommonKeywords.Wait until element is ready then input text    id=username    ${username}
    CommonKeywords.Wait until element is ready then input text    id=password    ${password}
    CommonKeywords.Wait until element is ready then click element    xpath=//button[@type="submit"]

verify login success message
    Wait Until Element Is Visible    id=flash    5s
    Element Should Contain    id=flash    You logged into a secure area!

user logout from herokuapp platform
    CommonKeywords.Wait until element is ready then click element    xpath=//a[@href="/logout"]

verify logout success message
    Wait Until Element Is Visible    id=flash    5s
    Element Should Contain    id=flash    You logged out of the secure area!

verify login fail message
    [Arguments]    ${expected}
    Wait Until Element Is Visible    id=flash    5s
    Element Should Contain    id=flash    ${expected}