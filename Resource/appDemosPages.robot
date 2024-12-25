*** Settings ***
Library    AppiumLibrary
Variables    ../Resource/locator.yaml

*** Keywords ***
Start Session Apps
    Set Appium Timeout    10s
    Open Application    http://localhost:4723/wd/hub
    ...    platformName=Android
    ...    platformVersion=11.0
    ...    deviceName=UwU
    ...    automationName=UiAutomator2
    ...    appPackage=io.appium.android.apis
    ...    appActivity=io.appium.android.apis.ApiDemos
    ...    noReset=true
    ...    autoGrantPermisson=true
    Sleep    1

Tap Accessbility
    Tap    ${text_accessbitlity}

Tap Accessbility Node Provider
    Tap    ${text_accessibility_node_provider}

Tap Accessbility Node Querying
    Tap    ${text_accessibility_node_Querying}

Tap Accessbility Node Service
    Tap    ${text_accessibility_service}

Tap Custom View 
    Tap    ${text_custom_view}

Close Session App
    Capture Page Screenshot    ${OUTPUT_DIR}/custom_screenshot.png
    Sleep    3
    Close Application    

Close App
    Capture Page Screenshot
    Quit Application