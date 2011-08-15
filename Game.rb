#!/usr/bin/env ruby

# Version 1.0


require_relative 'Resources.rb' # Imports "Resources.rb" which in turn imports all the other required files.

$file = File.new("log.txt", "w+") # Opens the log.
#puts "Enter your name:"

$usr1 = 'Joshua' # Sets player 1
$usr2 = 'Bob'    # Sets player 2

$player1area = [$hand1,$deck1,$graveyard1,$usr1,$monsterfield1]
$player2area = [$hand2,$deck2,$graveyard2,$usr2,$monsterfield2]
$activeplayer = 0 # Sets starting player
$lp = 8000 # Sets Life points
$turncount = 0
$activephase = 0

while $lp > 0 # If life points become 0 the game loop will close.
  start
  #activephase($activeplayer) 	# Starts the game
end
