Feature: Checkout

  #REQ-001
  Scenario: Checkout banana
    Given the price of a "banana" is 45c
    When A user checkout "banana" 2
    Then teh total price should be 90c

  Scenario: Checkout banana and apple
    Given the price of a "banana" is 45c
    And the price of a "apple" is 50c
    When A user checkout "banana" 2
    And A user checkout "apple" 3
    Then teh total price should be 240c