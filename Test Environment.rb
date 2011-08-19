#!/usr/bin/env ruby

# Version 1.0

# This is for testing.

#require_relative 'Resources.rb' # Imports "Resources.rb" which in turn imports all the other required files.

require_relative 'Help.rb' # More help coming soon...
require_relative 'Deck.rb'
require_relative 'Draw.rb'
require_relative 'Spell.rb'
require_relative 'Field.rb'
require_relative 'Discard.rb'
require_relative 'Summontesting.rb' # Testing version.
require_relative 'Phases.rb'
require_relative 'Update.rb'
require_relative 'Colourtest.rb'
require_relative 'Commands.rb'
require_relative 'Return.rb'
require_relative 'Playerset.rb' # Not being used yet.
require_relative 'Trap.rb' # Totally useless
require_relative 'List.rb'
require_relative 'Battle.rb' # Not stable yet
require_relative 'Setup.rb'

$file = File.new("log.txt", "w+") # Opens the log.
#puts "Enter your name:"
setup


while $lp1 > 0 # If life points become 0 the game loop will close.
  activephase($activeplayer)
  # End code coming soon.
end
