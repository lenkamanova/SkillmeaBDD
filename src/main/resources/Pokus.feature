Feature: pokus

  #Toto je komentar

  Scenario: Pokusny test 1
    Given nastaveni pocatecnich podminek
    And dalsi nastavovaci krok
    When toto je nejaka akce
    And toto je dalsi akce
    Then overeni vysledku
    And dalsi overeni vysledku

    Scenario: Pokusny test 2
      Given nastaveni pocatecnich podminek
      When toto je dalsi akce
      Then dalsi overeni vysledku


      Scenario: Kalkulacka - soucet dvou cisel
        Given Uzivatel ma zadany dve cisla 5 a 8
        When Uzivatel secte tato dve cisla
        Then Uzivatel vidi na kalkulace vysledek 13

        Scenario: Kalkulacka - deleni dvou cisel
          Given Uzivatel ma zadany dve cisla 15 a 5
          When Uzivatel vydeli tato dve cisla
          Then Uzivatel vidi na kalkulace vysledek 3

          Scenario Outline: Kalkulacka - scitani vice scenaru
            Given Uzivatel ma zadany dve cisla <prvniCislo> a <druheCislo>
            When Uzivatel secte tato dve cisla
            Then Uzivatel vidi na kalkulace vysledek <vysledek>

            Examples:
              |prvniCislo | druheCislo | vysledek |
              | 120       | 24        |  144    |
              | 1011      | 10        |  1021    |
              | 0       | -24        |  -24    |
