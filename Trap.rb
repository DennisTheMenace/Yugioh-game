#!/usr/bin/env ruby

# In Resources.rb? - Yes

# Set and activate a trap card

# INFO: Currently being rewritten

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
  if $testing == 0
    @@spelltrapfield.push(handtraps[response])
    abc = @@spelltrapfield.size
    abc -= 1
    $trapindicator[abc] = 1
  else
    $spelltrapfield1.addcard(3,handtraps[response])
  end
  
end

def activatetrap		# Being fully rewritten for v1.3
  fieldtraps = $spelltrapfield1.search(1,3,false)
  list(fieldtraps)



end
