Feature: Type Conversion & Data Generators

  Background:
    * url baseUrl

  Scenario: Generate random email and perform type conversion
    # 1. Calling Java from Karate to generate a random string!
    * def DataGen = Java.type('com.mycodeyatra.karate.generators.DataGenerator')
    * def randomEmail = DataGen.getRandomEmail()
    * print 'Generated random email:', randomEmail
    
    # 2. Type Conversion: String to Number
    * def stringAge = '25'
    # Use double tilde (~~) or parseInt for type conversion
    * def intAge = parseInt(stringAge)
    * match intAge == 25

    # 3. Using the generated data in an API call
    Given path '/users'
    And request { name: 'Dynamic User', email: '#(randomEmail)', age: '#(intAge)', role: 'user' }
    When method post
    Then status 201
    
    # Asserting the dynamically generated data was accepted
    And match response.email == randomEmail
