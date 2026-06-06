Feature: JSON and XML Expressions in Karate

  Background:
    * url baseUrl

  Scenario: Native JSON Parsing and Assertions
    # Karate natively understands JSON without external libraries
    Given path '/users'
    And request { name: 'Karate Ninja', email: 'ninja@karate.com', role: 'admin' }
    When method post
    Then status 201
    
    # Asserting JSON fields natively
    And match response.name == 'Karate Ninja'
    And match response.email == 'ninja@karate.com'
    
    # Fuzzy matching and schema validation
    And match response.id == '#uuid'
    And match response.createdAt == '#notnull'
    And match response.role == 'admin'

  Scenario: Native XML Parsing and Assertions
    Given path '/chaos/xml'
    When method get
    Then status 200
    
    # Karate seamlessly converts XML to a JSON-like tree
    And match response/users/user/name == 'Alice'
    And match response/users/user/id == '1'
