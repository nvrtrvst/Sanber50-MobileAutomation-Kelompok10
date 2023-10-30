*** Settings ***
Resource                 ../base.robot
Variables                ../bookFlight/bookFlight_locators.yaml

*** Keywords ***
# 1.Melakukan login ke Aplikasi
Click Book Button
    Click Element                        ${bookButton}

Click Location City
    Sleep    3s                          
    Click Element                        ${locationCity}

    sleep    1s
    Click Element                        ${locationCityDetail}

Click Destination City
    Sleep    1s
    Click Element                        ${destinationCity}
    Sleep    1s
    Click Element                        ${destinationCityDetail}

Click Class Flight
    Sleep    1s
    Click Element                        ${classFlight}
    Sleep    1s
    Click Element                        ${classFlightDetail}

Click Start Date
    Sleep    1s
    Click Element                        ${openStartDate}
    Sleep    2s
    Click Element                        ${chooseStartDate}
    Sleep    1s
    Click Element                        ${buttonOk}

Click End Date 
    Sleep    1s
    Click Element                        ${openEndDate}
    Sleep    2s
    Click Element                        ${chooseEndDate}
    Sleep    1s
    Click Element                        ${buttonOk}

Click Radio Button
    Sleep    1s
    Click Element                        ${optionFlight}
 
Click Book Flight Button
    sleep    1s
    Click Element                        ${bookButtonFlight}

Click Price Flight
    Sleep    1s
    Click Element                        ${buttonPrice}

Confirm Order
    Sleep    1s
    Click Element                        ${confirmOrder}
