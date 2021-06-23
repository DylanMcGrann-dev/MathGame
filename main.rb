require "./players"
require "./questions"
require "./responses"



class TheGame
  attr_accessor :player1, :player2
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @counter = 1
  end
  def addCount
    @counter += 1
  end

  # puts @player1.name
  def startGame
    while @player1.score > 0 && @player2.score > 0 
      if @counter.even?
        questions = Questions.new(@player2)
      else 
        questions = Questions.new(@player1)
      end
      #run game
      #prompt player 1 with question
      questions.generateQ

      #Receive input from player one
      input = $stdin.gets.chomp.to_i

      #check if input is the right answer
      if @counter.even?
        response1 = Response.new(input,questions.answer,@player2)
      else
        response1 = Response.new(input,questions.answer,@player1)
      end

      response1.checkAnswer
      if @player1.score > 0 && player2.score > 0
        puts "P1: #{@player1.score} vs P2 #{@player2.score}"
        puts "--- NEW TURN ---"
      end
      
    end
  end
end

player1 = Players.new("player1")
player2 = Players.new("player2")

game1 = TheGame.new(player1, player2)
game1.startGame
#if correct repond with correct message, players scores and new turn
#if wrong take a point away from player and repond with incorrect message, players scores and new turn
#change players
#repaet untill a player hits zero players
