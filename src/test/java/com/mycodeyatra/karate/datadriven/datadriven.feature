Feature: Data Driven Testing with CSV

  Background:
    * url baseUrl

  Scenario Outline: Create users dynamically from CSV
    Given path '/users'
    And request { name: '<name>', email: '<email>', role: '<role>' }
    When method post
    Then status <expectedStatus>

    Examples:
      | read('users.csv') |
