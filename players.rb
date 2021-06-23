class Players 
  attr_accessor :name, :score
  def initialize(name)
    @name = name
    @score = 3
  end
  
  def takeLife
    @score -= 1
  end
  def addCount
    @count += 1
  end
end 
# player1 = Players.new("player1")
# player2 = Players.new("player2")

# puts player2.score

