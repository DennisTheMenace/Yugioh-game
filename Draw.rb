#!/usr/bin/env ruby

# Method used for drawing a card.

# INSTRUCTIONS:

# To draw a card use this command template - 'draw(player, var, card)'
# Replace var with 'yes' or 'no' depending on if you want it to output that you drew a card
# Replace card with false if you want to draw a random card otherwise type the name of the card you want to draw in quote marks



$hand1 = [] # Sets hand to empty before game.
$hand2 = []
#$deck.delete($deck[1])
def draw(player,var,card)
  
  
  if player == 0
    player = $player1area
  end
  if player == 1
    player = $player2area
  end
  if card != false
    
    if $testing == 1
      # Ability to choose what card you want. Testing purposes only
      player[1].each { |x| #puts x
#puts x[:name]
      if x[:name] == card
        puts "Working so far!"
       
        player[0].push(x)
        player[1].delete(x)
        if var == "yes"
          puts "you drew the card #{x[:name]}"
        end
        
      end
      }
    end
  else
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
end
