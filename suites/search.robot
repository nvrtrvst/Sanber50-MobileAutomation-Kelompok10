*** Settings ***
Resource            ../pageObjects/base.robot
Resource            ../pageObjects/search/search.robot
Resource    ../pageObjects/login/login.robot

*** Keywords ***
# Tujuan: Verifikasi aplikasi berhasil melakukan pencarian dan memunculkan hasil pencarian
# Step 1:Buka Aplikasi Flight
# Step 2:Memunculkan halaman home
# Step 3: melakukan pencarian pada search bar
# Step 6: Mngklik tombol search
# Step 7 : Memunculkan hasil pencarian

*** Test Cases ***
Verify Success Search - Valid Code Booking
    Open Flight Application
    Click Log In Button
    Verify Login Page Appears
    Input Username Login Page
    Input Password Login Page
    Click Sign In Button
    Click search menu
    Input code booking
    Click search button

Verify Failed Search - Empty Code Booking
    Open Flight Application
    Click Log In Button
    Verify Login Page Appears
    Input Username Login Page
    Input Password Login Page
    Click Sign In Button
    Click search menu
    Empty code booking
    Click search button