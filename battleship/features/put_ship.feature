Feature: As a user I want to put my ships
  
  Background:
    Given an empty battleship 10x10

################
## Scenario 1 ##
################
  @wip  
  Scenario: I put a ship
    When i put a vertical cruiser in cell [1,1]
    Then the cruiser is located at position [1,1]

  @wip
  Scenario: I can not locate my ship position [3,3] because there are taken
    Given the cell [3,3] is occupied
    When i put a vertical cruiser in cell [3,3]
    Then i can not put the cruiser because there are collision

  @wip
  Scenario: I can not locate my ship in position [11,1] because falls off the board
    When I try put a submarine in cell [11,1]
    Then I can not put submarine because falls off the board