#!/usr/bin/env ruby

# Discard a card from your hand.

def discard(type) # Provide a string input of spell, monster or trap to determine the type of the card being discarded.
  discards = []
  
  types = ["spell", "monster", "trap"]
  if type == "all"
    $hand.each { |x| discards.push(x) }
  else types.each {|x|
  
  if x == type
    $hand.each { |i| if i[:type] == x
      discards.push(i)
    end
    }
  end
    
  }
  end
  print "What card would you like to discard? [1,2,3,4,5,6]"
  
  discards.each { |x| puts x[:name] }
  
  discardnum = gets.to_i
  discardnum -= 1
  
  puts "You have discarded #{discards[discardnum][:name]}"
  $file.puts("#{$activeplayer} discarded #{$hand[discardnum][:name]}")
  $graveyard.push($hand[discardnum]) # Add the card being discarded to the graveyard.
  update
  $hand.delete($hand[discardnum]) # Deletes the card from the hand.

  
end
