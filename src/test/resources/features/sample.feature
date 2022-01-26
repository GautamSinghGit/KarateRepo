Feature: First karate test

  Scenario: First karate test
    * print 'first karate test'
  Scenario: Second karate test
    * def one = 1
    * def two = 2
    * def add = 1+2
    * print add
  Scenario: read json object
    * def jsonObject =
    """
   {
   "details":{
    "name":"rahul","age":"34"
    }
    }
    """
    * print jsonObject.details.name