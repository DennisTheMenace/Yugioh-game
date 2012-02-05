#!/usr/bin/env ruby

# In Resources.rb? - Yes

# Basically, the valid input commands list


def command(player,user_response)
    playerset($testing)
    if user_response == true
      response = gets.chomp
    end
    if response == "smn" or response == "Summon"	# Summon a monster
      summon(@@hand,false)
    elsif response == "spl"
      spell($testing)		
    elsif response == "mf"
      puts 'Monster field:'
      $monsterfield1.list
    elsif response == "gv"		# Lists all cards in your graveyard
      puts 'Graveyard:'
      list(@@graveyard)
    elsif response == "lp"		# Display your current lifepoints
      playerset($testing)
      puts "You have #{$lp1.lifepoints}"
    elsif response == "hc"
      puts "You have #{@@hand.size} cards in your hand"
    elsif response == "hand"
      list(@@hand)
    #elsif response == "update"			# Needs to be implemented still. Will allow in-game updating of database or files
    #  require_relative 'Testing.rb'
    elsif response == "trp"			# Set trap card. INFO: Half implemented
      settrap($testing)
    elsif response == "settrap" 		# Alternate to trp.
      settrap($testing)
    elsif response == "atrp"			# Activate trap card. INFO: Half implemented
      activatetrap
    elsif response == "btl" and $testing == 1	# Monster battle method
      battle
    elsif response == "exit"		# Allows exiting and closes all open files.
      close
    elsif response == "turn"	# Outputs the current players turn
      puts $activeplayer
    elsif response == "help"	# The word 'Help' says it all
      help
    elsif response == "settings" and $testing == 1  # Doesn't work, crashes game
      begin
      $graphics = 0
      $screen.close
      rescue
        puts "Failed"
      
      end
    # Testing commands:
    elsif response == "rpt" and $testing == 1 # Report method yet to be implemented
      puts "Not ready yet".yellow
    elsif response == "parse" and $testing == 1 
      #puts "parsing...".cyan
      puts "parsing..."
      sleep 0.5
      parse(gets.to_s)
    elsif response == "eval" and $testing == 1
      playerset($testing)
      puts "Input password..."
      response = gets.chomp
      
      sleep 1
      if response == "asd"
        #puts "Access Granted".green
        puts "Access Granted"
      else
        #puts "Access Denied".red
        puts "Access Denied"
        sleep 1
        return
      end
      puts "Type what you want evaluated"
      abc = gets
      #puts "Proccessing...".yellow
      puts "Proccessing..."
      sleep 1
      #puts "Proccessed!".green
      puts "Proccessed!"
      eval(abc)
    
    elsif response == "test" and $testing == 1
      puts "Used for testing anything at all"
      test 
    elsif response == "options" 
      puts "This function is in development"
    elsif response == "decklist" # Outputs a list of names of all your cards in your deck
      puts $namelist
    else
      cputs("This does not compute",'yellow')
    end
end
