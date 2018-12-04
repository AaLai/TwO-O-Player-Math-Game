Classes

Game

  States
    - player lives
    - player turn...?

  Behavior

    - game behavior
     while loop here until player life = 0
      - round setup
      who goes, ask question
      - round return
      reduce lives
      - winner
      if player life = 0 declare winner
      else start round with next player turn


Player

  States
    - player lives
    - current turn...?

  Behavior
    - make question
    - user input
    - check if question is correct

P1 = New Player("P1")
P2 = New Player("P2")

