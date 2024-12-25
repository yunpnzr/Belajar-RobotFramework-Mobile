*** Settings ***
Library    AppiumLibrary
Resource    ../Resource/appDemosPages.robot
Variables    ../Resource/locator.yaml
Suite Setup    Start Session Apps
Suite Teardown    Close Session App

*** Test Cases ***
As a user, I want to open app 
    Page Should Contain Text    Accessibility
    Tap Accessbility
    Sleep    1
    Page Should Contain Text   Accessibility Node Provider
As a user, I want to open accessbility node provider
    Tap Accessbility Node Provider
    Page Should Contain Text    Enable TalkBack