#!/usr/bin/env ruby

# In Resources.rb? - Yes

# Sets up all the variables

def setup
  $testing = 1		# Sets it to testing mode if 1 or not testing mode if 0
    $testingmove = 'test'
  $graphics = 0		# Sets if graphics are enabled if 1 or disabled if 0
  $playermode = 0	# Sets the game to 1 player if 0 or 2 player if 1 
			# 2 player mode is so buggy... In other words, don't play the game in 2 player mode
			# I'll hopefully address this in version 1.4

  $loadgame = false	# Specifies of your loading a game/save/scenario
			# Set to false for now as it isn't stable yet

  $colour = 0		# Disable/Enable coloured text if 0/1 respectively

  $version = 1.3	# Game version

    if $testing == 1	# Uses some premade names if your in testing mode
      $usr1 = 'Joshua'
      $usr2 = 'Max'
        #$player1hand = AreaController.new
        #$player2hand = AreaController.new
        #$player1deck = AreaController.new
        #$player2deck = AreaController.new
        #$deck1.each{|card| $player1deck.addcard(card)}
        
    else			# For a proper game it prompts you for both players names
    puts "Player 1 name: "
    $usr1 = gets.chomp
    puts "Player 2 name: "
    $usr2 = gets.chomp
  end
  $lp1 = Lifepoints.new 		# Sets Life points controller class to $lp1 for player 1 - Reference to Lifepoints.rb
  $lp2 = Lifepoints.new 		# Sets Life points controller class to $lp2 for player 2 - Reference to Lifepoints.rb
  $player1area = [$hand1,$deck1,$graveyard1,$usr1,$lp1,$outofplay1] # Defines all the areas for Player 1 & 2
  $player2area = [$hand2,$deck2,$graveyard2,$usr2,$lp2,$outofplay2]
  $activeplayer = 0
  
  $monsterfield1 = FieldController.new		# Creates the class instance for player 1's monster and spell/trap fields
  $spelltrapfield1 = FieldController.new
  if $playermode == 1				# Creates the class instance for player 2's monster and spell/trap fields if 2 player is enabled
    $monsterfield2 = FieldController.new
    $spelltrapfield2 = FieldController.new
  end
  $turncount = 0
  $activephase = 0
  if $loadgame != true	# If your loading a game it doesn't draw 5 cards for player 1 and player 2 if your in 2 player mode
    5.times do draw(0,"yes", false) end
    if $playermode == 1
      5.times do draw(1,"yes", false) end
    end
  end
  draw($activeplayer,'yes',"Compulsory Evacuation Device")
end
