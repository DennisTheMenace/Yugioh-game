#!/usr/bin/env ruby

# In Resources.rb? - Yes

# Activate a spell.

# How will I do field spell cards?


def spell(mode)			# mode is a testing feature which outputs the card effect data before executing it. It's only for testing purposes
      				# The mode parameter should be replaced by reading the $testing variable but I'll need to go through all my existing source code
				# and change all the references to the spell function. =( Later I think

      playerset($testing)
      if @@spelltrapfield.size >= 5
        puts "There is no room on your spell and trap field"
        return 
      end
      handspells = [] 		
      @@hand.each {|x| 
      if x[:type] == "spell"
         handspells.push(x)			# Creates an array for all the spells in your hand.
      end 
      }
      puts "What spell do you want to activate? [1,2,3,4,5,6]"
      list(handspells)				# Lists all the spells in your hand
      response = gets.to_i
      if response == 0
        puts "Invalid entry".cyan
        return
      end
      response -= 1
      spell = response
      if handspells[spell][:effect] == ""
        print "Failed!  ".red
	puts "Insufficient effect data."
        return
      end
      print "You have "
      print "activated ".green
      puts "#{handspells[spell][:name]} "
      $file.puts("#{@@name} activated #{handspells[spell][:name]}")   # 
      if mode == 1
        puts handspells[spell][:effect]
      end      
      @@spelltrapfield.push(handspells[spell])			# Adds the spell to the spell field.
      puts "Evaluating spell data..."				
      sleep 0.5							# Added sleeps to make it cooler
      puts "Evaluated!".green
      eval(handspells[spell][:effect])
      #update						 	# Need to review this function at some point
      a = @@spelltrapfield.size
      a -= 1
      @@spelltrapfield.delete(@@spelltrapfield[a])		# Deletes the spell from the spell field
      @@graveyard.push(handspells[spell])
      #update 							# See 2nd comment above
end
