*** Settings ***
Library            AppiumLibrary

*** Variables ***
${REMOTE_URL}            http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}         Android
${PLATFORM_VERSION}      8.0
${DEVICE_NAME}           4200b666fc4594cf
${APP_PACKAGE}           com.example.myapplication
${APP_ACTIVITY}          com.example.myapplication.MainActivity
${TIMEOUT}               100000
${PASSWORD}              abc123
${USERNAME}              support@ngendigital.com
${SIGNOUT}               Sign Out
${WRONGPASSWORD}         salahcuy
${WRONGUSERNAME}         mimin@ngendigital.com
${EMPTY}                 
${INVALIDMESSAGE}        Invalid username/password



*** Keywords ***
Open Flight Application
    Open Application        ${REMOTE_URL}
    ...                     platformName=${PLATFORM_NAME}
    ...                     platformVersion=${PLATFORM_VERSION}
    ...                     deviceName=${DEVICE_NAME}
    ...                     appPackage=${APP_PACKAGE}
    ...                     appActivity=${APP_ACTIVITY}
    ...                     newCommandTimeout=${TIMEOUT}


Close Flight Application
    Close Application