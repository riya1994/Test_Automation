Feature: rest api test
Scenario: List fruit
  Given the system knows about the following fruit:
    | name       | color  |
    | banana     | yellow |
    | strawberry | red    |
  When the client requests a list of fruit
  Then the response is a list containing two fruits
  And one fruit has the following attributes:
    | attribute | type   | value  |
    | name      | String | banana |
    | color     | String | yellow |
  And one fruit has the following attributes:
    | attribute | type   | value      |
    | name      | String | strawberry |
    | color     | String | red        |