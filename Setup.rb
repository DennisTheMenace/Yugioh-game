#!/usr/bin/env ruby

def setup
  $testing = 1		# Sets it to testing mode if 1 or not testing mode if 0
  $graphics = 0		# Sets if graphics are enabled if 1 or disabled if 0
  $playermode = 0	# Sets the game to 1 player if 0 or 2 player if 1
  $loadgame = false
  if $testing == 1
    $usr1 = 'Joshua'
    $usr2 = 'Max'
  else
    puts "Player 1 name: "
    $usr1 = gets.chomp
    puts "Player 2 name: "
    $usr2 = gets.chomp
  end
  
  $player1area = [$hand1,$deck1,$graveyard1,$usr1,$monsterfield1,$spelltrapfield1,$lp1] # Defines all the areas for Player 1 & 2
  $player2area = [$hand2,$deck2,$graveyard2,$usr2,$monsterfield2,$spelltrapfield2,$lp2]
  $activeplayer = 0
  $lp1 = 8000 # Sets Life points for player 1
  $lp2 = 8000 # Sets Life points for player 2
  $turncount = 0
  $activephase = 0
  if $loadgame != true
 
    5.times do draw(0,"yes", false) end
    if $playermode == 1
      5.times do draw(1,"yes", false) end
    end
  end
  
end
