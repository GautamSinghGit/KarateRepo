Feature: API call with headers
  Scenario: API call with headers part_1
    Given header Accept-Encoding = 'gzip,deflate'
    And header Connection = 'Keep-Alive'
    When url BaseUrl+"//public/v1/users"
    And path '18'
    When method GET
    Then status 200
    * print response


  Scenario: API call with headers part_2

    * def req_header = { Accept-Encoding: 'gzip,deflate' , Connection: 'Keep-Alive'}
    Given headers res_header
    When url BaseUrl+"//public/v1/users"
    And path '18'
    When method GET
    Then status 200
    * print response

  Scenario: API call with headers part_3
    * configure headers =  { Accept-Encoding: 'gzip,deflate'}
    #Given headers res_header
    When url BaseUrl+"//public/v1/users"
    And path '18'
    When method GET
    Then status 200
    * print response

