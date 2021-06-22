require "./players"
require "./questions"
require "./responses"

# require "./"
player1 = Players.new("player1")
player2 = Players.new("player2")
questions = Questions.new(player1)

#run game
#prompt player 1 with question
questions.generateQ
#Receive input from player one
input = $stdin.gets.chomp.to_i
#check if input is the right answer
response1 = Response.new(input,questions.answer,player1)
response1.checkAnswer
#if correct repond with correct message, players scores and new turn
#if wrong take a point away from player and repond with incorrect message, players scores and new turn
#change players
#repaet untill a player hits zero players
