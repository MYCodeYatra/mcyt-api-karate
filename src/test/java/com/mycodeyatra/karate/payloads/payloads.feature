Feature: Reading JSON Payloads from Files

  Background:
    * url baseUrl

  Scenario: Create user using an external JSON file
    # Read the JSON file natively
    * def requestBody = read('user_payload.json')
    
    # We can also dynamically modify the read payload before sending it!
    * set requestBody.name = 'Modified Payload Ninja'
    
    Given path '/users'
    And request requestBody
    When method post
    Then status 201
    
    # Asserting the dynamically modified value
    And match response.name == 'Modified Payload Ninja'
    And match response.email == 'payload@karate.com'
    And match response.id == '#uuid'
