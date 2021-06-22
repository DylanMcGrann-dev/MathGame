require "./players"
require "./questions"
# questions = Questions.new
class Response 
  attr_accessor :input, :answer, :player
  def initialize(input,answer,player)
    @input = input
    @answer = answer
    @player = player
  end

 
  def checkAnswer
    if input === answer
      puts "#{@player.name}: Correct!"

    elsif input != answer && player.score > 1
      puts "#{@player.name}: Sorry, you are wrong"
      @player.takeLife
      
    elsif input != answer && player.score === 1
      @player.takeLife
      puts "#{@player.name}: you loose"
      puts "---END GAME---"

    end
  end

end
# Response.checkAnswer
# print "enter input"
# input = gets.chomp
# print input
# question1 = Questions.new
# response1 = Response.new(input,question1.answer,player1)
# question1.generateQ(player1)
# response1.checkAnswer