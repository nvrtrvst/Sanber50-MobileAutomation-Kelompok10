*** Settings ***
Library            AppiumLibrary

*** Keywords ***
# tujuan: Verifikasi aplikasi berubah dibuka dan memunculkan halaman homepage
Open Flight Application
    Open Application                http://127.0.0.1:4723/wd/hub
    ...                             platformName=Android
    ...                             platformVersion=12.0
    ...                             deviceName=emulator-5554
    ...                             appPackage=com.example.myapplication
    ...                             appActivity=com.example.myapplication.MainActivity

Verify Homepage Appears
    Wait Until Element Is Visible    //android.widget.ImageView[@resource-id="com.example.myapplication:id/imageView4"]
    Wait Until Element Is Visible    //android.widget.Button[@resource-id="com.example.myapplication:id/login"]
    Wait Until Element Is Visible    //android.widget.Button[@resource-id="com.example.myapplication:id/button6" and @text="Search"]
    Wait Until Element Is Visible    //android.widget.Button[@resource-id="com.example.myapplication:id/button6" and @text="Check in"]

Close Flight Application
    Close Application

 
*** Test Cases ***
#test
Succesfully Open Flight Application
    Open Flight Application
    Verify Homepage Appears
    Close Flight Application
