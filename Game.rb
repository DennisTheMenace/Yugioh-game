#!/usr/bin/env ruby

require_relative 'Resources.rb' # Imports "Resources.rb" which in turn imports all the other required files.
$file = File.new("log.txt", "w+") # Opens the log.
#puts "Enter your name:"
$usr = 'Joshua'

$lp = 8000 # Sets Life points
$turncount = 0
$activephase = 0

while $lp > 0 # If life points become 0 the game loop will close.
  activephase
  # End code coming soon.
end
