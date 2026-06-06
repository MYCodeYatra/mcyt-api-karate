Feature: Introduction to Karate DSL

  Background:
    * url baseUrl

  Scenario: Verify basic API GET request
    Given path '/users/2'
    When method get
    Then status 200
    And match response.data.id == 2
    And match response.data.first_name == 'Janet'
