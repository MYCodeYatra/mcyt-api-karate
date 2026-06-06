Feature: Introduction to Karate DSL

  Background:
    * url baseUrl

  Scenario: Verify basic API GET request
    Given path '/health'
    When method get
    Then status 200
    And match response.status == 'OK'
    And match response.message == 'Mock Server is running'
