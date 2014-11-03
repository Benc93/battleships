Week 2: Battleships
===========
##Briefing
  
We were set the task of building a Ruby-based recreation of the well known board game: Battleships.  
  
Our version of the game must have the following capabilities:
  
+ Two players must each have their own board with dimensions of 10 x 10 squares.  
+ On the board, there must be a number of ships that can be positioned by the player.  
+ After players have positioned their ships, they must be able to shoot at their opponent's board.  
+ A player announces a position on the opponent's board on which to fire. 
+ The opposing player must report a 'HIT" or a 'MISS', based on the contents on that position. 
+ The attacking player notes the 'HIT' or 'MISS' on their own tracking grid. 
+ The opposing player notes if their own grid has sustained a 'HIT'. 
+ When all of one player's ships have been hit the game is over and the other player wins. 
   
   
##Analysis
    
Based on the briefing, our team initially identified the following classes: **"Ship"**, **"Tracking Grid"**, **"Target Grid"**, and **"Player"**.  Later, we presented the rationale for choosing those classes, how they should collaborate with each other, and the responsibilities we'd assigned to each class.  

####Alternative Idea
   
After each group presented their ideas - an alternative domain map was suggested that was a little more abstract but had merit as a solution to the brief. The premise of the *newer* idea is that a player's board is made up essentially or either **Water** or **Ship**. A player can hit *either*, and regardless of what the location is made of (ship or water) the location changes fundamentally and is unavailable to be hit again. Why not break up a grid into it's components (co-ordinates) and assign those values as variables to two *alternative* classes: **"Water"** and **"Fleet"**. After all, **Grid = Water + Fleet**
   
As a brief (illustration only) example:  
```Ruby

class Water
  def Initialize
    @locations = [A1, A2, A3...]  #the values in this array are water and will miss.  
  end
end

class Fleet
  def initialize
    @submarine  = [J2, J3, J4]
    @cruiser    = [G4, H4, I4]
    @destroyer  = [B7, B8] 
    @carrier    = [C4, C5, C6, C7, C8]
    @battleship = [E1, F1, G1, H1, I1, J1] 
  end
end
```
   
The above example is purely to illustrate that you *can* decompose the grid into squares and assign those squares to either **water** or **fleet**. Crucial to this idea is the assumption that a 'Player' would have assigned the Fleet's co-ordinates in a prior method (eg set_board), and the remaining co-ordinates are pushed into the **water** class as an array. 
   
+ When a player 'fires', the target co-ordinate could be searched for in an instance of **water**. If found - it could return a 'MISS' and must importantly, DELETE the value in the array. 
+ If the player's co-ordinate is not in the **water** array, it would continue to the arrays contained within **fleet**.
+ The shot's co-ordinates would be contained within ONE of the arrays in the **fleet** and return 'HIT'and delete itself from the array. 
+ If a shot co-ordinate passes through **water** and through **fleet**, the co-ordinate is already used and can return an error.
   
Why delete the values?! 
1. Because whether you hit water or a ship - that square has been used. 
2. Because when an array in fleet is 0 - you can report that the ship has been sunk! 



