*** Settings ***
Library    AppiumLibrary

*** Test Cases ***
Add Task Mobile
    Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=emulator-5554    appPackage=com.avjindersinghsekhon.minimaltodo    appActivity=.MainActivity
    Click Element    id=fab
    Input Text    id=userToDoEditText    Buy milk
    Click Element    id=makeToDoFloatingActionButton
    Page Should Contain Text    Buy milk
    Close Application