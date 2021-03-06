Feature: As a user I want to shoot the enemy ships
  
  Background:
    Given an empty battleship 10x10

  Scenario: Shot hit water
    When I shoot coordinate [1,1]
    Then The coordinate [1,1] has water

  Scenario: Shoot and hit a ship but do not sunken
    Given the cell [3,3] is occupied for horizontal cruiser
    When I shoot coordinate [3,3]
    Then I hit ship in [3,3] but dont sunken
  
  Scenario: Shoot a ship and sunken
  	Given the cell [3,3] is occupied for horizontal submarine
    When I shoot coordinate [3,3]
    Then I hit ship in [3,3] and sunken