#!/usr/bin/env ruby

# Version 1.2

# Imports all the required files.

require_relative 'Help.rb' 		# More help coming soon...
require_relative 'Deck.rb'		# Contains the information for your deck
require_relative 'Draw.rb'		# Draw a card function
require_relative 'Spell.rb'		# Activate a spell card function
require_relative 'Field.rb'		# Sets the field variables
require_relative 'Discard.rb'		# Discard a card function
require_relative 'Summon.rb'		# Summon a monster function
require_relative 'Phases.rb'		# Data for all of the phases
#require_relative 'Colourtest.rb'	# Provides the ability to used coloured text
require_relative 'Commands.rb'		# All of the valid commands
require_relative 'Playerset.rb'		# Defines the player variables so they can be used by functions
require_relative 'Trap.rb'		# Set a trap function
require_relative 'List.rb'		# Handy command which lists all of a certain area(variable)
require_relative 'Battle.rb'		# Battle a monster function
require_relative 'Setup.rb'		# Sets up all the player variables before the game
require_relative 'Load.rb'		# Function for loading a savegame/scenario
require_relative 'Initialisation.rb'	# Initialises all the needed components for the game to run based on the variables set by setup
require_relative 'Routines.rb'		# Routines which must be run every action to allow for recognising of conditons for card effects
require_relative 'Close.rb'		# Function for closing down the game safely
require_relative 'Start.rb'		# Starts the game!
require_relative 'Lifepoints.rb'	# Lifepoint control
require_relative 'Update.rb'
