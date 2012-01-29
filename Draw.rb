#!/usr/bin/env ruby

# In Resources.rb? - Yes

# Method used for drawing a card.

# INSTRUCTIONS:

# To draw a card use this command template - 'draw(player, output, card)'
# Replace player with 0 or 1 to determine which player is drawing. 0 = player 1 and 1 = player 2
# Replace outout with 'yes' or 'no' depending on if you want it to output the card that you drew
# Replace card with false if you want to draw a random card otherwise type the name of the card you want to draw in quote marks



$hand1 = [] # Sets hand to empty before game.
$hand2 = []
#$deck.delete($deck[1])
def draw(player,output,card)
  
  
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
        if output == "yes"	# If you passed 'yes' to output then it outputs what card you drew
          puts "you drew the card #{x[:name]}"
        end
        
      end
      }
    end
  else
  draw = rand(player[1].size)
  $file.puts("#{player[3]} drew #{player[1][draw][:name]}")
  if output == "yes"	# If you passed 'yes' to output then it outputs what card you drew
    puts "you drew the card #{player[1][draw][:name]}"
  end
  player[0].push(player[1][draw])
  player[1].delete(player[1][draw])
  end
end
