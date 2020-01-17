Feature: Coffee machine
  As a coffee buyer
  I want a basic machine that
  I can put a 5 kr coin in
  and get a black cup of coffee back
  because I crave caffeine.

  Background:
    Given that the machine is plugged in
    And that water is available


  Scenario Outline:
    Given that the machine has ground coffee
    And that the machine has chocolatepowder
    And that the machine has milk
    And that the machine has cups
    When the user selects black coffee
    And the user inserts a <money1> kr coin
    And the user inserts a <money2> kr coin
    And the user inserts a <money3> kr coin
    And the user inserts a <money4> kr coin
    And the user inserts a <money5> kr coin
    And the user inserts a <money6> kr coin
    And the user inserts a <money7> kr coin
    And the user inserts a <money8> kr coin
    And the user inserts a <money9> kr coin
    And the user inserts a <money10> kr coin
    Then the the machine dispense a cup
    And the user recieves a cup of black coffee
    And the user gets change for the blackcoffee if there is any

    Examples:
      | money1 | money2 | money3 | money4 | money5 | money6 | money7 | money8 | money9 | money10 |
      | 5      | 5      | 0      | 0      | 0      | 0      | 0      | 0      | 0      | 0       |
      | 10     | 0      | 0      | 0      | 0      | 0      | 0      | 0      | 0      | 0       |
      | 1      | 1      | 1      | 1      | 1      | 1      | 1      | 1      | 1      | 1       |
      | 1      | 1      | 1      | 1      | 1      | 5      | 0      | 0      | 0      | 0       |
      | 2      | 2      | 2      | 2      | 2      | 0      | 0      | 0      | 0      | 0       |
      | 2      | 1      | 2      | 5      | 0      | 0      | 0      | 0      | 0      | 0       |


  Scenario Outline:
    Given that the machine has ground coffee
    And that the machine has chocolatepowder
    And that the machine has milk
    And that the machine has cups
    When the user selects cappuccino
    And the user inserts a <money1> kr coin
    And the user inserts a <money2> kr coin
    And the user inserts a <money3> kr coin
    And the user inserts a <money4> kr coin
    And the user inserts a <money5> kr coin
    And the user inserts a <money6> kr coin
    And the user inserts a <money7> kr coin
    And the user inserts a <money8> kr coin
    And the user inserts a <money9> kr coin
    And the user inserts a <money10> kr coin
    Then the the machine dispense a cup
    And the user recieves a cappuccino
    And the user gets change for the cappuccino if there is any

    Examples:
      | money1 | money2 | money3 | money4 | money5 | money6 | money7 | money8 | money9 | money10 |
      | 5      | 5      | 0      | 0      | 0      | 0      | 0      | 0      | 0      | 0       |
      | 10     | 0      | 0      | 0      | 0      | 0      | 0      | 0      | 0      | 0       |
      | 1      | 1      | 1      | 1      | 1      | 1      | 1      | 1      | 1      | 1       |
      | 1      | 1      | 1      | 1      | 1      | 5      | 0      | 0      | 0      | 0       |
      | 2      | 2      | 2      | 2      | 2      | 0      | 0      | 0      | 0      | 0       |
      | 2      | 1      | 2      | 5      | 0      | 0      | 0      | 0      | 0      | 0       |


  Scenario Outline:
    Given that the machine has ground coffee
    And that the machine has chocolatepowder
    And that the machine has milk
    And that the machine has cups
    When the user selects a cup of hotchocolate
    And the user inserts a <money1> kr coin
    And the user inserts a <money2> kr coin
    And the user inserts a <money3> kr coin
    And the user inserts a <money4> kr coin
    And the user inserts a <money5> kr coin
    And the user inserts a <money6> kr coin
    And the user inserts a <money7> kr coin
    And the user inserts a <money8> kr coin
    And the user inserts a <money9> kr coin
    And the user inserts a <money10> kr coin
    Then the the machine dispense a cup
    And the user recieves a cup of hotchocolate
    And the user gets change for the hotchocolate if there is any

    Examples:
      | money1 | money2 | money3 | money4 | money5 | money6 | money7 | money8 | money9 | money10 |
      | 5      | 5      | 0      | 0      | 0      | 0      | 0      | 0      | 0      | 0       |
      | 10     | 0      | 0      | 0      | 0      | 0      | 0      | 0      | 0      | 0       |
      | 1      | 1      | 1      | 1      | 1      | 1      | 1      | 1      | 1      | 1       |
      | 1      | 1      | 1      | 1      | 1      | 5      | 0      | 0      | 0      | 0       |
      | 2      | 2      | 2      | 2      | 2      | 0      | 0      | 0      | 0      | 0       |
      | 2      | 1      | 2      | 5      | 0      | 0      | 0      | 0      | 0      | 0       |


  Scenario:
    Given that the machine has no ground coffee
    And that the machine has cups
    When the user selects a black cup of coffee
    And the user inserts a <money1> kr coin
    And the user inserts a <money2> kr coin
    And the user inserts a <money3> kr coin
    And the user inserts a <money4> kr coin
    And the user inserts a <money5> kr coin
    And the user inserts a <money6> kr coin
    And the user inserts a <money7> kr coin
    And the user inserts a <money8> kr coin
    And the user inserts a <money9> kr coin
    And the user inserts a <money10> kr coin
    Then the the machine dispense a cup
    And the user recieves a black cup of coffee

    Examples:
      | money1 | money2 | money3 | money4 | money5 | money6 | money7 | money8 | money9 | money10 |
      | 5      | 5      | 0      | 0      | 0      | 0      | 0      | 0      | 0      | 0       |
      | 10     | 0      | 0      | 0      | 0      | 0      | 0      | 0      | 0      | 0       |
      | 1      | 1      | 1      | 1      | 1      | 1      | 1      | 1      | 1      | 1       |
      | 1      | 1      | 1      | 1      | 1      | 5      | 0      | 0      | 0      | 0       |
      | 2      | 2      | 2      | 2      | 2      | 0      | 0      | 0      | 0      | 0       |
      | 2      | 1      | 2      | 5      | 0      | 0      | 0      | 0      | 0      | 0       |


  Scenario:
    Given that the machine has ground coffee
    And that the machine has no milk
    And that the machine has cups
    When the user selects cappuccino
    And the user inserts a <money1> kr coin
    And the user inserts a <money2> kr coin
    And the user inserts a <money3> kr coin
    And the user inserts a <money4> kr coin
    And the user inserts a <money5> kr coin
    And the user inserts a <money6> kr coin
    And the user inserts a <money7> kr coin
    And the user inserts a <money8> kr coin
    And the user inserts a <money9> kr coin
    And the user inserts a <money10> kr coin
    Then the the machine dispense a cup
    And the user recieves a cappuccino

    Examples:
      | money1 | money2 | money3 | money4 | money5 | money6 | money7 | money8 | money9 | money10 |
      | 5      | 5      | 0      | 0      | 0      | 0      | 0      | 0      | 0      | 0       |
      | 10     | 0      | 0      | 0      | 0      | 0      | 0      | 0      | 0      | 0       |
      | 1      | 1      | 1      | 1      | 1      | 1      | 1      | 1      | 1      | 1       |
      | 1      | 1      | 1      | 1      | 1      | 5      | 0      | 0      | 0      | 0       |
      | 2      | 2      | 2      | 2      | 2      | 0      | 0      | 0      | 0      | 0       |
      | 2      | 1      | 2      | 5      | 0      | 0      | 0      | 0      | 0      | 0       |


    Given that the machine has no chocolatepowder
    And that the machine has milk
    And that the machine has cups
    When the user selects cappuccino
    And the user inserts a <money1> kr coin
    And the user inserts a <money2> kr coin
    And the user inserts a <money3> kr coin
    And the user inserts a <money4> kr coin
    And the user inserts a <money5> kr coin
    And the user inserts a <money6> kr coin
    And the user inserts a <money7> kr coin
    And the user inserts a <money8> kr coin
    And the user inserts a <money9> kr coin
    And the user inserts a <money10> kr coin
    Then the the machine dispense a cup
    And the user recieves a cappuccino

    Examples:
      | money1 | money2 | money3 | money4 | money5 | money6 | money7 | money8 | money9 | money10 |
      | 5      | 5      | 0      | 0      | 0      | 0      | 0      | 0      | 0      | 0       |
      | 10     | 0      | 0      | 0      | 0      | 0      | 0      | 0      | 0      | 0       |
      | 1      | 1      | 1      | 1      | 1      | 1      | 1      | 1      | 1      | 1       |
      | 1      | 1      | 1      | 1      | 1      | 5      | 0      | 0      | 0      | 0       |
      | 2      | 2      | 2      | 2      | 2      | 0      | 0      | 0      | 0      | 0       |
      | 2      | 1      | 2      | 5      | 0      | 0      | 0      | 0      | 0      | 0       |

    Given that the machine has chocolatepowder
    And that the machine has no milk
    And that the machine has cups
    When the user selects cappuccino
    And the user inserts a <money1> kr coin
    And the user inserts a <money2> kr coin
    And the user inserts a <money3> kr coin
    And the user inserts a <money4> kr coin
    And the user inserts a <money5> kr coin
    And the user inserts a <money6> kr coin
    And the user inserts a <money7> kr coin
    And the user inserts a <money8> kr coin
    And the user inserts a <money9> kr coin
    And the user inserts a <money10> kr coin
    Then the the machine dispense a cup
    And the user recieves a cappuccino

    Examples:
      | money1 | money2 | money3 | money4 | money5 | money6 | money7 | money8 | money9 | money10 |
      | 5      | 5      | 0      | 0      | 0      | 0      | 0      | 0      | 0      | 0       |
      | 10     | 0      | 0      | 0      | 0      | 0      | 0      | 0      | 0      | 0       |
      | 1      | 1      | 1      | 1      | 1      | 1      | 1      | 1      | 1      | 1       |
      | 1      | 1      | 1      | 1      | 1      | 5      | 0      | 0      | 0      | 0       |
      | 2      | 2      | 2      | 2      | 2      | 0      | 0      | 0      | 0      | 0       |
      | 2      | 1      | 2      | 5      | 0      | 0      | 0      | 0      | 0      | 0       |

