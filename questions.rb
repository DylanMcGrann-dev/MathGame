require "./players"

class Questions
  attr_reader :x, :y
  def initialize(player)
    @x = 0 
    @y = 0
    @player = player
  end
  def generateQ
    @x = rand(20)
    @y = rand(20)
    puts "#{@player.name}: what is #{@x} + #{@y}"
  end

  def answer
    @x + @y
  end
end


# questions = Questions.new
# questions.generateQ()
# questions.answer
