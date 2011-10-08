#!/usr/bin/env ruby

# Version 1.1

# This is for testing.

#require_relative 'Resources.rb' # Imports "Resources.rb" which in turn imports all the other required files.

require_relative 'Help.rb' # More help coming soon...
require_relative 'Deck.rb'
require_relative 'Draw.rb'
require_relative 'Spell.rb'
require_relative 'Field.rb'
require_relative 'Discard.rb'
#require_relative 'Summontesting.rb' # Testing version.
require_relative 'Summon.rb'
require_relative 'Phases.rb'
require_relative 'Update.rb'
require_relative 'Colourtest.rb'
require_relative 'Commands.rb'
require_relative 'Return.rb' 	# Not used
require_relative 'Playerset.rb'
require_relative 'Trap.rb' # Totally useless
require_relative 'List.rb'
require_relative 'Battle.rb' # Not stable yet
require_relative 'Setup.rb'
#require_relative 'TestGraphicsHandler.rb'
require_relative 'Resize.rb'
require_relative 'Trap.rb'
require_relative 'Parser.rb' # In the making
require_relative 'Menu.rb' # Haven't even started this yet
require_relative 'Load.rb'    # Haven't even started this yet
require_relative 'Initialisation.rb'
require_relative 'Routines.rb'
require_relative 'Close.rb'
require_relative 'Testing.rb'

if $testing == 1
  require_relative "Devtools.rb"
end

$file = File.new("log.txt", "w+") # Opens the log.
#puts "Enter your name:"
setup
initialise('hello')
while $lp1 > 0 # If life points become 0 the game loop will close.
  activephase($activeplayer)
  # End code coming soon.
end
