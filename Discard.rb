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
  
  response = gets.chomp
  case response
  when /[1]/
    discardnum = 0
  when /[2]/
    discardnum = 1
  when /[3]/
    discardnum = 2
  when /[4]/
    discardnum = 3
  when /[5]/
    discardnum = 4
  when /[6]/
    discardnum = 5
  when /[7]/
    discardnum = 6
  end
  puts "You have discarded #{discards[discardnum][:name]}"
  $file.puts("#{$usr} discarded #{$hand[discardnum][:name]}")
  $graveyard.push($hand[discardnum]) # Add the card being discarded to the graveyard.
  update
  $hand.delete($hand[discardnum]) # Deletes the card from the hand.

  
end
