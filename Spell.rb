#!/usr/bin/env ruby

# Activate a spell.

def spell(mode)
      playerset($testing)
      handspells = []
      @@hand.each {|x| 
      if x[:type] == "spell"
         handspells.push(x)			# Creates an array for all the spells in your hand.
      end 
      }
      
      puts "What spell do you want to activate? [1,2,3,4,5,6]"
      list(handspells)
      #handspells.each {|x| puts x[:name]}			# Lists all the spells in your hand.
      response = gets.to_i
      #puts response
      #sleep 1.5
      if response == 0
        puts "Invalid entry".cyan
        sleep 0.5
        return
      end
      
      response -= 1
      #puts response
      #sleep 1.5
      spell = response
      @@graveyard.push(handspells[spell])
      @@hand.delete(handspells[spell])
      if handspells[spell][:effect] == ""
        print "Failed!  ".red
	puts "Insufficient effect data."
        return
      end
      print "You have "
      print "activated ".green
      puts "#{handspells[spell][:name]} "
      $file.puts("#{@@name} activated #{handspells[spell][:name]}")   # 
      #eval(handspells[spell][:effect])
      if mode == 1
        puts handspells[spell][:effect]
      end      

      
      puts "Evaluating spell data..."
      sleep 0.5
      puts "Evaluated!"
      eval(handspells[spell][:effect])
      @@spelltrapfield.push(handspells[spell])			# Adds the spell to the spell field.
      update						 	# Updates the log.
      #puts "Spell and Trap Field:"
      #@@spelltrapfield.each {|x| puts x[:name]}
      #puts "Graveyard:"
      #@@graveyard.each {|x| puts x[:name]}
      a = @@spelltrapfield.size
      a -= 1
      @@spelltrapfield.delete(@@spelltrapfield[a])		# Deletes the spell from the spell field.
      update 							# Updates the log.
end
