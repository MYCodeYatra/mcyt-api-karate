Feature: Standalone Karate Mock Server

  Background:
    * configure cors = true

  Scenario: pathMatches('/greeting') && methodIs('get')
    * def response = { message: 'Hello from Karate Mock Server!' }
    * def responseStatus = 200

  Scenario: pathMatches('/users') && methodIs('post')
    * def response = { id: '#(java.util.UUID.randomUUID().toString())', status: 'created' }
    * def responseStatus = 201

  # Catch-all
  Scenario:
    * def responseStatus = 404
    * def response = { error: 'Not Found' }
