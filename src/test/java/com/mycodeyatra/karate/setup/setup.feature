Feature: Exploring Advanced Karate Setup

  Scenario: Testing environment variables
    # The 'env' variable is automatically populated by karate-config.js
    * print 'Current environment is:', karate.env
    * print 'Base URL is set to:', baseUrl
    
    Given url baseUrl + '/health'
    When method get
    Then status 200
    And match response.status == 'OK'
