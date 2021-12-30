Feature: HongKong Weather API - Current Weather Report (rhrread)

    Description: Automated API tests for the HongKong Weather API - current weather report with query parameter <rhrread> 
                 & different languages (English/ Traditional Chinese/ Simlified Chinese)

#Global configuration to bypass SSLHandshakeException
* configure ssl = true

    Background: API base URL provided
        Given url 'https://data.weather.gov.hk/weatherAPI/opendata/weather.php?'


    Scenario: Get current HK weather report (Language: English)
        Given params {dataType: "rhrread", lang: "en"}
        When method Get
        Then status 200
        Then call read('classpath:Helpers/rhrreadCommonAssertions.feature')

        And match response.rainfall.data..place == ['Central &amp; Western District', 'Eastern District', 'Kwai Tsing', 'Islands District', 'North District', 'Sai Kung', 'Sha Tin', 'Southern District', 'Tai Po', 'Tsuen Wan', 'Tuen Mun', 'Wan Chai', 'Yuen Long', 'Yau Tsim Mong', 'Sham Shui Po', 'Kowloon City', 'Wong Tai Sin', 'Kwun Tong']
        And match response.temperature.data..place == ["King's Park", "Hong Kong Observatory", "Wong Chuk Hang", "Ta Kwu Ling", "Lau Fau Shan", "Tai Po", "Sha Tin", "Tuen Mun", "Tseung Kwan O", "Sai Kung", "Cheung Chau", "Chek Lap Kok", "Tsing Yi", "Shek Kong", "Tsuen Wan Ho Koon", "Tsuen Wan Shing Mun Valley", "Hong Kong Park", "Shau Kei Wan", "Kowloon City", "Happy Valley", "Wong Tai Sin", "Stanley", "Kwun Tong", "Sham Shui Po", "Kai Tak Runway Park", "Yuen Long Park", "Tai Mei Tuk" ]
        And match response.humidity.data..place == ["Hong Kong Observatory"]

        
    Scenario: Get current HK weather report (Language: Traditional Chinese)
        Given params {dataType: "rhrread", lang: "tc"}
        When method Get
        Then status 200
        Then call read('classpath:Helpers/rhrreadCommonAssertions.feature')

        And match response.rainfall.data..place == ['中西區', '東區', '葵青', '離島區', '北區', '西貢', '沙田', '南區', '大埔', '荃灣', '屯門', '灣仔', '元朗', '油尖旺', '深水埗', '九龍城', '黃大仙', '觀塘']
        And match response.temperature.data..place == ["京士柏", "香港天文台", "黃竹坑", "打鼓嶺", "流浮山", "大埔", "沙田", "屯門", "將軍澳", "西貢", "長洲", "赤鱲角", "青衣", "石崗", "荃灣可觀", "荃灣城門谷", "香港公園", "筲箕灣", "九龍城", "跑馬地", "黃大仙", "赤柱", "觀塘", "深水埗", "啟德跑道公園", "元朗公園", "大美督" ]
        And match response.humidity.data..place == ["香港天文台"]

    Scenario: Get current HK weather report (Language: Simplified Chinese)
        Given params {dataType: "rhrread", lang: "sc"}
        When method Get
        Then status 200
        Then call read('classpath:Helpers/rhrreadCommonAssertions.feature')

        And match response.rainfall.data..place == ['中西区', '东区', '葵青', '离岛区', '北区', '西贡', '沙田', '南区', '大埔', '荃湾', '屯门', '湾仔', '元朗', '油尖旺', '深水埗', '九龙城', '黄大仙', '观塘']
        And match response.temperature.data..place == ["京士柏", "香港天文台", "黄竹坑", "打鼓岭", "流浮山", "大埔", "沙田", "屯门", "将军澳", "西贡", "长洲", "赤鱲角", "青衣", "石岗", "荃湾可观", "荃湾城门谷", "香港公园", "筲箕湾", "九龙城", "跑马地", "黄大仙", "赤柱", "观塘", "深水埗", "启德跑道公园", "元朗公园", "大美督" ]
        And match response.humidity.data..place == ["香港天文台"]

