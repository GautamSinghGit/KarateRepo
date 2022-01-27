Feature: get api feature

  Scenario: get api feature
    #* def query = {status:'active'}
    Given url BaseUrl+'//public/v1/users'
    #And path "3364"
    * params query = {gender:'male'}
    When method GET
    Then status 200
    * print myVarName
    * print "=================================================================================================="
    * print response.data.name
#    * def resp = response
#    * def name =  resp.data.name
#    * print name
#    * match name == "Anand Bhattacharya DO"