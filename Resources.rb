#!/usr/bin/env ruby

# Version 1.2

# Imports all the required files.

require 'Help.rb' 		# More help coming soon...
require 'Deck.rb'		# Contains the information for your deck
require 'Draw.rb'		# Draw a card method
require 'Spell.rb'		# Activate a spell card method
require 'Field.rb'		# Sets the field variables
require 'Discard.rb'		# Discard a card method
require 'Summon.rb'		# Summon a monster method
require 'Phases.rb'		# Data for all of the phases
require 'Colourtest.rb'	# Provides the ability to used coloured text STATUS: not working INFO: need to implement an option for when to enable colour text depending on if you have ansi colour bla bla installed
require 'Commands.rb'		# All of the valid commands
require 'Playerset.rb'		# Defines the player variables so they can be used by methods
require 'Trap.rb'		# Set a trap method
require 'List.rb'		# Handy command which lists all of a certain area(variable)
require 'Battle.rb'		# Battle a monster method
require 'Setup.rb'		# Sets up all the player variables before the game
require 'Load.rb'		# Method for loading a savegame/scenario
require 'Initialisation.rb'	# Initialises all the needed components for the game to run based on the variables set by setup
require 'Routines.rb'		# Routines which must be run every action to allow for recognising of conditons for card effects
require 'Close.rb'		# Method for closing down the game safely
require 'Start.rb'		# Starts the game!
require 'Lifepoints.rb'	# Lifepoint control
require 'Update.rb'
require 'Trap.rb'		# Set and activate trap cards STATUS untested INFO: Early stages of implementation
require 'Testing.rb'
require 'Hand.rb'
