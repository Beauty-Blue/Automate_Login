*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/LoginPageKeywords.robot
Variables       ../resources/config/config.yaml
Variables       ../resources/testdata/login.yaml
Suite Setup     Open Browser    ${baseUrl}    chrome
Suite Teardown  Close Browser


*** Test Cases ***
As a user, I want to login success with valid credential
    Go To    ${baseUrl}
    user login to herokuapp platform with    ${valid_username}    ${valid_password}
    verify login success message
    user logout from herokuapp platform
    verify logout success message
