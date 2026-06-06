@ignore
Feature: Reusable Login Feature

  Scenario: Perform login and return token
    # We expect 'userEmail' and 'userPassword' to be passed in by the caller
    Given url baseUrl + '/auth/login'
    And request { email: '#(userEmail)', password: '#(userPassword)' }
    When method post
    Then status 200
    And match response.token == '#notnull'
    
    # Store the token so the caller can use it
    * def authToken = response.token
