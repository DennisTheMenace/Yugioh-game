#!/usr/bin/env ruby

# Basically, the valid input commands list

def command(player,ninja)
    playerset($testing)
    if ninja == true
      response = gets.chomp
    end
    if response == "smn"	# Summon a monster
      summon(@@hand)
    elsif response == "spl"
      spell($testing)		
    elsif response == "mf"
      puts 'Monster field:'
      list(@@monsterfield)
    elsif response == "gv"		# Lists all cards in your graveyard
      puts 'Graveyard:'
      list(@@graveyard)
    elsif response == "lp"
      puts "You have #{$lp1}"
    elsif response == "hc"
      puts "You have #{@@hand.size} cards in your hand"
    elsif response == "hand"
      list(@@hand)
    elsif response == "trp"			# Half implemented
      settrap($testing)
    elsif response == "settrap" 		# Alternate to trp
      settrap($testing)
    elsif response == "atrp"			# Half implemented
      activatetrap
    elsif response == "btl"
      battle
    elsif response == "exit"		# Allows exiting and closes all open files.
      close
    elsif response == "turn"	# Outputs the current players turn
      puts $activeplayer
    elsif response == "help"	# The word 'Help' says it all
      help
    elsif response == "settings"  # Doesn't work, crashes game
      begin
      $graphics = 0
      $screen.close
      rescue
        puts "Failed"
      
      end
    # Testing commands:
    elsif response == "rpt" # Forgot what this was suppose to be =(
      puts "Not ready yet".yellow
    elsif response == "parse"
      puts "parsing...".cyan
      sleep 0.5
      parse(gets.to_s)
    elsif response == "eval" 
      playerset($testing)
      puts "Input password..."
      response = gets.chomp
      
      sleep 1
      if response == "asd"
        puts "Access Granted".green
      else
        puts "Access Denied".red
        sleep 1
        return
      end
      puts "Type what you want evaluated"
      abc = gets
      puts "Proccessing...".yellow
      sleep 1
      puts "Proccessed!".green
      eval(abc)
    
    elsif response == "test" and $testing == 1
      puts "This testing function is in development"
      draw($activeplayer, "yes", "Celtic Guardian")
    elsif response == "options" 
      puts "This function is in development"
    else
      puts "This does not compute".yellow
    end
end
