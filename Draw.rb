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
def draw(player,output,card)
    
    playerset('unknown')
  if card != false
    
    if $testing == 1
      # Ability to choose what card you want. Testing purposes only
      @@deck.each { |x| #puts x
#puts x[:name]
      if x[:name] == card
        puts "Working so far!"
       
        @@hand.push(x)
        @@deck.delete(x)
        if output == "yes"	# If you passed 'yes' to output then it outputs what card you drew
          puts "you drew the card #{x[:name]}"
        end
        
      end
      }
    end
  else
  draw = $player1deck.randomcard
  $file.puts("#{player[3]} drew #{@@deck[draw][:name]}")
  if output == "yes"	# If you passed 'yes' to output then it outputs what card you drew
    puts "you drew the card #{@@deck[draw][:name]}"
  end
  if $testing == 1
    $player1hand.addcard(@@deck[draw])
     @@deck.delete(@@deck[draw])
  else
    @@hand.push(@@deck[draw])
    @@deck.delete(@@deck[draw])
  end
      end
end
