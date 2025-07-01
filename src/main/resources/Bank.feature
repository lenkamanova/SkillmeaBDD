Feature: Bank

  Scenario: Bank account balance
    Given Bank account with 1000 kc
    Then A user account balance is 1000 kc

  Scenario Outline: Bank account transfer
    Given Bank account with <inicialBalance> kc
    When A user withdraw <withdrawAmount> kc
    And A user transfer <transferAmount> kc to this account
    Then A user account balance is <expectedBalance> kc

  Examples:
    | inicialBalance | withdrawAmount | transferAmount | expectedBalance |
    | 500            | 250            | 1250           | 1500            |
    | 1000           | 500            | 1000           | 1500            |
    | 5000           | 6000           | 1500           | 6500            |
    | -5000          | 0              | 6000           | 1000            |

  Scenario Outline: Bank account transfer - 2
    Given Bank account with <inicialBalance> kc
    When A user transfer <transferAmount> kc to this account
    And A user withdraw <withdrawAmount> kc
    Then A user account balance is <expectedBalance> kc

    Examples:
      | inicialBalance | withdrawAmount | transferAmount | expectedBalance |
      | 500            | 250            | 1250           | 1500            |
      | 1000           | 500            | 1000           | 1500            |
      | 5000           | 6000           | 1500            | 500            |
      | -5000          | 0              | 6000           | 1000            |

    ############################################################################

  Scenario: Multiple bank account transfer
    Given Bank account with 1000 kc
    And another Bank account with 2000 kc
    When A user transfer from first account to second one 500 kc
    Then A user account balance is 500 kc
    And A user second account balance is 2500 kc
