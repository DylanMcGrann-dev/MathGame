require "./players"
class messages
  def displayScore
    puts "P1: #{player1.score} vs P2 #{player2.score}"
  end
  def gamewon
    puts ""
  end
  def newTurn
    puts "--- NEW TURN ---"
  end
  def endgame
    puts "--- GAME OVER ---"
  end
end
