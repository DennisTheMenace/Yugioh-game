#!/usr/bin/env ruby

# Version 1.1

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
