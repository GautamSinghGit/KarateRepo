Feature: Post API call

  Background:
    Given url BaseUrl
    * def randomString =
    """
    function(s){
    var text = "";
    var pattern = "ABCDEFGHabcdefgh";
    for(var i=0;i<s;i++){
        text+= pattern.charAt(Math.floor(Math.random()*pattern.length()));
        }
    return text;
    }
    """
    * def postReq =
    """
    {
    "gender": "female",
    "name": "Anshu",
    "status": "active"
    }
    """
    * def random_String = randomString(10)
    * postReq.email = random_String+"@gmail.com"
    * print postReq

  Scenario: post api call
    Given header Authorization = 'Bearer '+tokenId
    When path "//public/v1/users"
    And request postReq
    When method POST
    Then status 201
    * match $.data.name == "#present"
    * print "dssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss"
    * print response.data.name
