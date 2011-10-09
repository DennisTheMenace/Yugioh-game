#!/usr/bin/env ruby

# In Resources.rb? - Yes

# Start the game!

def start
  puts "Setting up variables..."
  sleep 0.5
  setup				# Sets up all the variables
  puts "Initialising..."
  sleep 0.5
  initialise(nil)   		# Initialises all the needed features before the game
  #draw($activeplayer,'yes','Sakuretsu Armor')
  puts "Starting game..."
  sleep 0.5
  
end
