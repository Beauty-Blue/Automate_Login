*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/LoginPageKeywords.robot
Variables       ../resources/config/config.yaml
Variables       ../resources/testdata/login.yaml
Suite Setup     Open Browser    ${baseUrl}    chrome
Suite Teardown  Close Browser



*** Test Cases ***
Login failed - wrong password
    Go To    ${baseUrl}
    user login to herokuapp platform with    ${valid_username}    ${invalid_password}
    verify login fail message    Your password is invalid!
    
