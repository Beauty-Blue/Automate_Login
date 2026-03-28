*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/LoginPageKeywords.robot
Variables       ../resources/config/config.yaml
Variables       ../resources/testdata/login.yaml
Suite Setup     Open Browser    ${baseUrl}    chrome
Suite Teardown  Close Browser



*** Test Cases ***
Login failed - username not found
    Go To    ${baseUrl}
    user login to herokuapp platform with    ${invalid_username}    ${invalid_password}
    verify login fail message    Your username is invalid!
    