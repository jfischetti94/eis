Feature: As a user I want to put my ships

  Background:
    Given board with default size
      And the cell [3,3] is occupied

################
## Scenario 1 ##
################
  
  Scenario: I put a vertical submarine successfully
    When i put a vertical submarine in cell [1,1]
    Then the submarine is located at position [1,1]


  Scenario: I put a horizontal submarine successfully
    When i put a horizontal submarine in cell [1,1]
    Then the submarine is located at position [1,1]

  @wip
  Scenario: I put a vertical cruiser successfully
    When i put a vertical cruiser in cell [1,1]
    Then the cruiser is located at position [1,1]
      And the cruiser is located at position [1,2]  

  @wip
  Scenario: I put a horizontal cruiser successfully
    When i put a horizontal cruiser in cell [1,1]
    Then the cruiser is located at position [1,1]
      And the cruiser is located at position [2,1]

  @wip
  Scenario: I put a vertical destroyer successfully
    When i put a vertical destroyer in cell [1,1] vertical
    Then the destroyer is located at position [1,1]
      And the destroyer is located at position [1,2]
      And the destroyer is located at position [1,3]

  @wip
  Scenario: I put a horizontal destroyer successfully
    When i put a horizontal destroyer in cell [1,1]
    Then the destroyer is located at position [1,1]
      And the destroyer is located at position [2,1]
      And the destroyer is located at position [3,1]

################

## Scenario 2 ##
################boat

  @wip
  Scenario: I can not locate a vertical submarine in position [3,3] because there are collision
    When i put a vertical submarine in cell [3,3]
    Then i can not put the submarine because there are collision

  @wip
  Scenario: I can not locate a vertical cruiser in position [3,3] because there are collision
    When i put a vertical cruiser in cell [2,3]
    Then i can not put the submarine because there are collision

  @wip
  Scenario: I can not locate a vertical destroyer in position [1,3] because there are collision
    When i put a vertical destroyer in cell [1,3]
    Then i can not put the destroyer because there are collision

################
## Scenario 3 ##
################

  @wip
  Scenario: I can not locate a vertical destroyer in position [9,9] because falls off the board
    When i put a vertical destroyer in cell [9,9]
    Then i can not put the destroyer because falls off the board

  @wip
  Scenario: I can not locate a vertical destroyer in position [3,9] because falls off the board
    When i put a vertical destroyer in cell [3,6]
    Then i can not put the destroyer because falls off the board