*** Settings ***
Resource                 ../base.robot
Variables                ../bookFlight/bookFlight_locators.yaml

*** Keywords ***
# 1.Melakukan login ke Aplikasi
Click Book Button
    Click Element                        ${bookButton}

Click Location City
    Sleep    3s
    Click Element                        //android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerFrom"]
    sleep    3s
    Click Element                        //android.widget.TextView[@resource-id="android:id/text1" and @text="Chicago"]

Click Destination City
    Sleep    3s
    Click Element                        //android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerTo"]
    Sleep    3s
    Click Element                        //android.widget.TextView[@resource-id="android:id/text1" and @text="Ottawa"]

Click Class Flight
    Sleep    3s
    Click Element                        //android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerClass"]
    Sleep    3s
    Click Element                        //android.widget.TextView[@resource-id="android:id/text1" and @text="Business"]

Click Radio Button
    Sleep    5s
    Click Element                        //android.widget.RadioButton[@resource-id="com.example.myapplication:id/radioButtonFlight"]
 
Click Book Flight Button
    sleep    5s
    Click Element                          //android.widget.Button[@resource-id="com.example.myapplication:id/book_flight"]

Click Price Flight
    Sleep    5s
    Click Element                          //android.widget.Button[@resource-id="com.example.myapplication:id/price1"]

Confirm Order
    Sleep    5s
    Click Element                          //android.widget.Button[@resource-id="com.example.myapplication:id/confirm_order"]
