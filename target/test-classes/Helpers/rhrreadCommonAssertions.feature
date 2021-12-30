Feature: Common assertions for https://data.weather.gov.hk/weatherAPI/opendata/weather.php?rhrread

    Description:　Common assertion steps for HK current local weather report

    Scenario: rhrread common assertion steps
    
        # JSON Object "lightning"
        And match response.lightning.data == "##array"
        And match response.lightning == "##object"

        # JSON Object "rainfall"
        And match response.rainfall.data == '#[18]'
        And match each response.rainfall.data == {unit: "#string", max: "##number", min: "##number", place: "#string", main: "#string"}
        And match response.rainfall.startTime contains "+08:00"
        And match response.rainfall.endTime contains "+08:00"

        # JSON Object "temperature"
        And match response.temperature.data == '#[27]'
        And match each response.temperature.data == {place: "#string", value: "#number", unit: "#string"}
        And match response.temperature.recordTime contains "+08:00"

        # JSON Object "humidity"
        And match each response.humidity.data == {place: "#string", value: "#number", unit: "#string"}
        And match response.humidity.recordTime contains "+08:00"
        
        # Other fields
        And match karate.range(50,93) contains response.icon
        And match response.iconUpdateTime contains "+08:00"
        And match response.updateTime contains "+08:00"
        And match response.warningMessage == "#notnull"
        And match response.rainstormReminder == "##string"
        And match response.specialWxTips == "##array"
        And match response.tcmessage == "#notnull"
        And match response.mintempFrom00To09 == "#notnull"
        And match response.rainfallFrom00To12 == "#notnull"
        And match response.rainfallLastMonth == "#notnull"
        And match response.rainfallJanuaryToLastMonth == "#notnull"