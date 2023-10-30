*** Settings ***
Resource            ../base.robot
Variables           ../search/search_locator.yaml

*** Keywords ***
# Tujuan: Verifikasi aplikasi berhasil melakukan pencarian dan memunculkan hasil pencarian
# Step 1:Buka Aplikasi Flight
# Step 2:Memunculkan halaman home
# Step 3: melakukan pencarian pada search bar
# Step 6: Mngklik tombol search
# Step 7 : Memunculkan hasil pencarian


Click search menu
    sleep    5s
    Click Element           ${locatorSearchMenu}
    

Input code booking
    sleep    5s
    Input text               ${locatorSearchBar}                    ${CODE_BOOKING}

Empty code booking
    sleep    5s
    Input text               ${locatorSearchBar}                    ${EMPTY}

Click search button
    sleep    5s
    Click Element            ${locatorButtonSearch}

