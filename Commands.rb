#!/usr/bin/env ruby

# Basically, the valid input commands list

def command(player)
    playerset
    response = gets.chomp
    if response == "smn"	# Summon a monster
      summon
    elsif response == "spl"
      spell		# Remind me to update spell to allow for inputting $activeplayer
    elsif response == "mf"
      puts 'Monster field:'
      @@monsterfield.each {|x| puts x[:name]}
      #$monsterfield.each { |b| puts $monsterfield[b]}
    elsif response == "gv"		# Lists all cards in your graveyard
      puts 'Graveyard:'
      list(@@graveyard)
      #$graveyard.each { |b| puts $graveyard[b][:name]}
    elsif response == "lp"
      puts "You have #{$lp}"
    elsif response == "hc"
      puts "You have #{@@hand.size} cards in your hand"
    
    elsif response == "trp"					# Not implemented yet.
      puts "This has not been implemented yet"
    elsif response == "btl"
      battle
    elsif response == "exit"		# Allows exiting and closes all open files.
      $file.close
      sleep 1
      puts "Files flushed properly"
      sleep 1
      abort("Exiting")
    elsif response == "turn"	# Outputs the current players turn
      puts $activeplayer
    elsif response == "help"	# The word 'Help' says it all
      help
    # Testing commands:
    elsif response == "rpt" # Forgot what this was suppose to be =(
      puts "Not ready yet".yellow
    
    else
      puts "This does not compute".yellow
    end
end
