#!/usr/bin/env ruby
$trapindicator = [0,0,0,0,0]
def settrap(mode)
  playerset($testing)
  handtraps = []
  @@hand.each {|x| 
  if x[:type] == "trap"
    handtraps.push(x)			# Creates an array for all the traps in your hand.
  end 
  }
      
  puts "What trap do you want to set? [1,2,3,4,5,6]"
  list(handtraps)
  response = gets.to_i
  response -= 1
  @@spelltrapfield.push(handtraps[response])
  abc = @@spelltrapfield.size
  abc -= 1
  $trapindicator[abc] = 1
end

def activatetrap
  playerset($testing)
  fieldtraps = []
  @@spelltrapfield.each {|x| 
  if x[:type] == "trap"
    fieldtraps.push(x)			# Creates an array for all the traps in your hand.
  end 
  }
  
  #puts $trapindicator
  puts "What trap do you want to activate?"
  sleep 0.5
  #response = gets.to_i
  #response -= 1
  response = 1
  puts response
  sleep 0.3
  #$trapindicator[response] = 2
  response -= 1
  puts fieldtraps[response][:effect]
  sleep 0.3
  eval(fieldtraps[response][:effect])
  a = @@spelltrapfield.size
  a -= 1
  list(@@spelltrapfield)
  puts "Spelltrapfield:"
  @@spelltrapfield.delete(@@spelltrapfield[a])
  sleep 0.3
  list(@@spelltrapfield)
  puts "Deleted from field"	
  @@graveyard.push(fieldtraps[response])
  sleep 0.3
  puts 'Graveyard:'
  list(@@graveyard)
  puts "Added to graveyard"
end
