#!/usr/bin/env ruby

# Activate a spell.

def spell
      playerset
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
      puts handspells[spell][:effect]
      eval(handspells[spell][:effect])
      puts "Evaluated"
      $spelltrapfield1.push(handspells[spell])			# Adds the spell to the spell field.
      update						 	# Updates the log.
      puts "Spell and Trap Field:"
      $spelltrapfield1.each {|x| puts x[:name]}
      puts "Graveyard:"
      @@graveyard.each {|x| puts x[:name]}
      a = $spelltrapfield1.size
      a -= 1
      $spelltrapfield1.delete($spelltrapfield1[a])		# Deletes the spell from the spell field.
      update 							# Updates the log.
end
