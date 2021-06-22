# What information is relevant to each class?
# What will they need in order to be initialized?
# What public methods will be defined on them?
# Furthermore:

# Which class will contain the game loop (where each instance of the loop is the other players turn)?
# Which class should manage who the current_player is?
# Which class(es) will contain user I/O and which will not have any?

#classes 
  #players
    # player 1 -- property
    # player 2 -- property
    # 3/3 -- property

  #question
    # generate two numbers between 1 and 20 -- method
    # what does x plus y equal -- method
    # does the calculation -- method
  # Responses
    # checks if the response is the same -- method
    # if not return incorrect message and subtract a point and display score -- method
    # if yes return correct message and display score -- method
    # that is correct -- property
    # that is incorrect -- property
  # messages
    # stored list of messages
    # you win -- property
    # ---new turn---  --property
    # ---end game---  -- property
  # turns