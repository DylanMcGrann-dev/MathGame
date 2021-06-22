require "./players"
require "./questions"
require "./responses"

player1 = Players.new("player1")
player2 = Players.new("player2")
# require "./"

while player1.score > 0 && player2.score > 0 
  questions = Questions.new(player1)

  #run game
  #prompt player 1 with question
  questions.generateQ

  #Receive input from player one
  input = $stdin.gets.chomp.to_i

  #check if input is the right answer
  response1 = Response.new(input,questions.answer,player1)
  response1.checkAnswer
  
  puts "P1: #{player1.score} vs P2 #{player2.score}"
  puts "--- NEW TURN ---"
end
#if correct repond with correct message, players scores and new turn
#if wrong take a point away from player and repond with incorrect message, players scores and new turn
#change players
#repaet untill a player hits zero players
