Feature: Calling Other Feature Files

  Background:
    * url baseUrl

  Scenario: Fetch protected profile using a token from another feature
    # Call the login.feature and pass the arguments dynamically
    * def loginResult = call read('login.feature') { userEmail: 'admin@mycodeyatra.com', userPassword: 'password123' }
    
    # Extract the token from the result
    * def myToken = loginResult.authToken
    * print 'Successfully retrieved token:', myToken

    # Use the token to fetch the protected profile
    Given path '/auth/profile'
    And header Authorization = 'Bearer ' + myToken
    When method get
    Then status 200
    And match response.message == 'Welcome to your protected profile!'
