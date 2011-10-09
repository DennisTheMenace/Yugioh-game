#!/usr/bin/env ruby

# In Resources.rb? - Yes

# Discard a card from your hand.

def discard(type) # Provide a string input of spell, monster, trap or all to determine the type of the card being discarded.
  puts "Discard initiated"
  discards = []
  playerset($activeplayer)
  types = ["spell", "monster", "trap"]
  if type == "all"
    puts "Discard parameter = 'all'"
    @@hand.each { |x| discards.push(x) }
  else types.each {|x|
  
    if x == type
      @@hand.each { |i| if i[:type] == x
      discards.push(i)
    end
    }
  end
    
  }
  end
  puts "What card would you like to discard? [1,2,3,4,5,6]"
  
  discards.each { |x| puts x[:name] }
  
  discardnum = gets.to_i
  if discardnum == 0
    puts "Invalid entry".cyan
    return
  end
  discardnum -= 1
  sleep 1
  puts discardnum
  
  $file.puts("#{$activeplayer} discarded #{@@hand[discardnum][:name]}")
  @@graveyard.push(@@hand[discardnum]) # Add the card being discarded to the graveyard.
  puts "Pushed to graveyard"
  update
  @@hand.delete(@@hand[discardnum]) # Deletes the card from the hand.
  puts "Deleted from hand"
  puts "You have discarded #{discards[discardnum][:name]}"
  
end

