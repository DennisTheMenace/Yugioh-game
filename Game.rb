#!/usr/bin/env ruby

# Version 1.2

# Made by Joshua Rowe



# Need to change the way it handles ending games

# Probably create a new file called run.rb and use that to start the game, then it goes to the menu and you can choose to play a game.
# It then runs Game.rb and after the while loop is the end code.


require_relative 'Resources.rb' # Imports "Resources.rb" which in turn imports all the other required files.


# Open the log
  
$file = File.new("log.txt", "w+")

start

while $lp1 > 0 # If life points become 0 the game loop will close.
  activephase($activeplayer)
  if $lp1 <= 0
    puts "You lose..."
    puts "=("
    sleep 1
    close
  end
  # More end code coming soon.
end
