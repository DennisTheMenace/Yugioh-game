#!/usr/bin/env ruby

# Method used for drawing a card.

# Creates a random number and uses that to add a random card to the hand and then deletes it from the deck.

$hand1 = [] # Sets hand to empty before game.
$hand2 = []
#$deck.delete($deck[1])
def draw(player,var) 
  if player == 0
    player = $player1area
  end
  if player == 1
    player = $player2area
  end
  draw = rand(player[1].size)
  #puts draw
  
  #if x == "yes"
  #  puts "you drew the card #{$deck1[draw][:name]}"
  $file.puts("#{player[3]} drew #{player[1][draw][:name]}")
  #elsif x == "no"
  if var == "yes"
    puts "you drew the card #{player[1][draw][:name]}"
  end
  
  #else
  #puts "Please specify a correct draw variable."
  #end
  player[0].push(player[1][draw])
  player[1].delete(player[1][draw])
end
