#!/usr/bin/env ruby

# Version 1.2

# Imports all the required files.

require_relative 'Help.rb' 		# More help coming soon...
require_relative 'Deck.rb'		# Contains the information for your deck
require_relative 'Draw.rb'		# Draw a card method
require_relative 'Spell.rb'		# Activate a spell card method
require_relative 'Field.rb'		# Sets the field variables
require_relative 'Discard.rb'		# Discard a card method
require_relative 'Summon.rb'		# Summon a monster method
require_relative 'Phases.rb'		# Data for all of the phases
require_relative 'Colourtest.rb'	# Provides the ability to used coloured text STATUS: not working INFO: need to implement an option for when to enable colour text depending on if you have ansi colour bla bla installed
require_relative 'Commands.rb'		# All of the valid commands
require_relative 'Playerset.rb'		# Defines the player variables so they can be used by methods
require_relative 'Trap.rb'		# Set a trap method
require_relative 'List.rb'		# Handy command which lists all of a certain area(variable)
require_relative 'Battle.rb'		# Battle a monster method
require_relative 'Setup.rb'		# Sets up all the player variables before the game
require_relative 'Load.rb'		# Method for loading a savegame/scenario
require_relative 'Initialisation.rb'	# Initialises all the needed components for the game to run based on the variables set by setup
require_relative 'Routines.rb'		# Routines which must be run every action to allow for recognising of conditons for card effects
require_relative 'Close.rb'		# Method for closing down the game safely
require_relative 'Start.rb'		# Starts the game!
require_relative 'Lifepoints.rb'	# Lifepoint control
require_relative 'Update.rb'
require_relative 'Trap.rb'		# Set and activate trap cards STATUS untested INFO: Early stages of implementation

