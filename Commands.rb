#!/usr/bin/env ruby

# In Resources.rb? - Yes

# Basically, the valid input commands list

# 1. smn = Summon a monster
# 2. spl = Activate spell card
# 3. trp = Set a trap
# 4. lp = Show lifepoints
# 5. hc = Show hand count
# 6. mf = Show monster field
# 7. gv = Show graveyard
# 8. exit = Exit's the game
# 9. help = Lists commands and can also give you a tutorial*
# 10. btl = Battle an enemy monster with one of your own
# 11. turn = Output the current players turn

# * Tutorial coming soon...

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
    elsif response == "update"
      require_relative 'Resources.rb'
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
    elsif response == "rpt" and $testing == 1 # Forgot what this was suppose to be =(
      puts "Not ready yet".yellow
    elsif response == "parse" and $testing == 1 
      puts "parsing...".cyan
      sleep 0.5
      parse(gets.to_s)
    elsif response == "eval" and $testing == 1
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
      puts "Used for testing anything at all"
      test
    elsif response == "options" 
      puts "This function is in development"
    else
      puts "This does not compute".yellow

    end
end
