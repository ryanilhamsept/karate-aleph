Feature:  karate test automation API Get User

  Scenario: get all user
    Given url 'https://jsonplaceholder.typicode.com/users'
    When method get
    Then status 200
    And match response == { id: '#number', name: '#string', username: '#string', email: '#string' }
     

  