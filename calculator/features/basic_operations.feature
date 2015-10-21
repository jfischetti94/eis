Feature: Operaciones basicas

  Background:
    Given i go to the calculator page

  Scenario: sum
    Given first operand is 1
    And second operand is 2
    When make the sum
    Then the result is 3

  Scenario: subtraction
    Given first operand is 3
    And second operand is 2
    When make the subtraction
    Then the result is 1

    @wip
    Scenario: average
      Given first operand is 2
      And second operand is 8
      When make the average
      Then the result is 6