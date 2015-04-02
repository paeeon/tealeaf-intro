class Game
  def play
    "Start the game!"
  end
end

class Bingo < Game
  def rules_of_play
    #rules of play
  end
end

# If we added a play method to the Bingo class, calling play on a Bingo object would 
# look through Bingo before Game, resulting in the play method in the Bingo class being
# called, rather than the play method in Game.