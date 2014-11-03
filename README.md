Week2 Battleships
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
    
Based on the briefing, our team initially identified the following classes: **Ship**, **Tracking Grid**, **Target Grid**, and **Player**.  Later, we presented the rationale for choosing those classes, how they should collaborate with each other, and the responsibilities we'd assigned to each class.  

###New Idea
   
After each group presented their ideas - an alternative domain map was suggested that was a little more abstract but had merit as a solution to the brief. The premise of the *newer* idea is that a player's board is made up essentially or either **Water** or **Ship**. A player can hit either, and regardless of what the location is made of (ship or water) the location changes fundamentally and is unavailable to be hit again. Why not break up a player's grid into it's components (co-ordinates) and assign the values as variables to two *new* classes: **Water** and **Fleet**. After all, **Grid = Water + Fleet**


