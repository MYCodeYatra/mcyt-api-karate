Feature: Karate UI and API Combination

  Background:
    # Configure Karate to use Chrome in headless mode
    * configure driver = { type: 'chrome', headless: true }
    * url baseUrl

  Scenario: Create a user via API and verify via UI
    # 1. API Step: Setup Data
    Given path '/users'
    And request { name: 'UI Ninja', email: 'ui@karate.com', role: 'admin' }
    When method post
    Then status 201
    * def createdId = response.id

    # 2. UI Step: Launch Browser
    Given driver 'https://example.com'
    And delay(1000)
    Then match driver.title == 'Example Domain'
    
    # In a real scenario, you would login to your app's frontend
    # And input('#username', 'ui@karate.com')
    # And click('#login-button')
    # And match text('#welcome-message') contains 'UI Ninja'
