Feature: Testing the Karate Mock

  Background:
    # The port will be dynamically injected by the JUnit Runner via systemProperty
    * def mockPort = karate.properties['mockPort']
    * url 'http://localhost:' + mockPort

  Scenario: Call the mocked greeting endpoint
    Given path '/greeting'
    When method get
    Then status 200
    And match response.message == 'Hello from Karate Mock Server!'

  Scenario: Call the mocked POST endpoint
    Given path '/users'
    And request { name: 'Test User' }
    When method post
    Then status 201
    And match response.status == 'created'
    And match response.id == '#notnull'
