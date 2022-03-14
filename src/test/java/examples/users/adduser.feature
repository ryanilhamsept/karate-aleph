Feature:  karate test automation API Get User

Scenario: create add Data
    * def user =
      """
      {
         "name": "Aleph QA Test",
         "username": "aleph.test",
         "email": "aleph.test@mail.com"
      }
      """

    Given url 'https://jsonplaceholder.typicode.com/users'
    And request user
    When method post
    Then status 201

    * def id = response.id
    * print 'created id is: ', id

