Feature: As a user I want to shoot the enemy ships
  
  Background:
    Given a battleship 10x10

  Scenario: Shot hit water
    When I shoot coordinate [1,1]
    Then The coordinate [1,1] has water
  @wip
  Scenario: Shoot and hit a ship but do not sunken
    Given the cell [3,3] is occupied for horizontal cruiser
    When I shoot coordinate [3,3]
    Then I hit ship in [3,3] but dont sunken

  @wip
  Scenario: Shoot a ship and sunken
  	Given the cell [3,3] is occupied for horizonal submarine
    When I shoot coordinate [3,3]
    Then I hit ship and sunken