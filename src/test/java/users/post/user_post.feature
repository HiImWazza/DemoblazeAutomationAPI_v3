Feature: Post an user on demoblaze

  Background:
    * def path1 = "/signup"
    * def path2 = "/login"
    #    halabala25 ya fue usado
    * def user = "halabala26"
    * def pass = "123456"
    * def wrong_pass = "..."
    * def text = "Auth_token: aGFsYWJhbGE0MTY5Mjk2OA=="

  Scenario: Post an user successfully
    Given url urlBase + path1
    And request { "username": "#(user)", "password": "#(pass)" }
    When method post
    Then status 200

  Scenario: Post a user unsuccessfully
    Given url urlBase + path1
    And request { "username": "#(user)", "password": "#(pass)" }
    When method post
    Then status 200
    And match $.errorMessage == 'This user already exist.'

  Scenario: Login successfully
    Given url urlBase + path2
    And request { "username": "#(user)", "password": "#(pass)" }
    When method post
    Then status 200
    And match text contains "Auth_token:"

  Scenario: Login unsuccessfully
    Given url urlBase + path2
    And request { "username": "#(user)", "password": "#(wrong_pass)" }
    When method post
    Then status 200
    And match $.errorMessage == 'Wrong password.'