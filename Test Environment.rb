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
require_relative 'Summontesting.rb' # Unstable version.
require_relative 'Phases.rb'
require_relative 'Update.rb'
require_relative 'Colourtest.rb'
require_relative 'Commands.rb'
require_relative 'Return.rb'
require_relative 'Playerset.rb' # Not being used yet.
require_relative 'Trap.rb' # Totally useless
require_relative 'List.rb'

$file = File.new("log.txt", "w+") # Opens the log.
#puts "Enter your name:"
$usr1 = 'Joshua'
$usr2 = 'Bob'
$player1area = [$hand1,$deck1,$graveyard1,$usr1]
$player2area = [$hand2,$deck2,$graveyard2,$usr2]
$activeplayer = 0
$lp = 8000 # Sets Life points
$turncount = 0
$activephase = 0

while $lp > 0 # If life points become 0 the game loop will close.
  activephase($activeplayer)
  # End code coming soon.
end
