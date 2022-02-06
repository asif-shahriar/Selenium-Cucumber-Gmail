Feature: Signup to Gmail
  Scenario Outline: Signup with invalid password
    Given User visits to the signup page
    When User inputs invalid "<short password>"
    Then User cannot signup
    Examples:
      | short password |
      | abc |
      | bcd |
      | 123 |
  Scenario Outline: Signup with invalid password
    When User gives invalid "<weak password>"
    Then User cannot signup again
    Examples:
      | weak password |
      | abcdefgh |
      | 12345678 |
      | password |

