#!/usr/bin/env ruby

def command
    response = gets.chomp
    if response == "smn"
      summon($hand)
    elsif response == "spl"
      spell
    elsif response == "mf"
      puts 'Monster field:'
      puts $monsterfield[0][:name]
      #$monsterfield.each { |b| puts $monsterfield[b]}
    elsif response == "gv"
      puts 'Graveyard:'
      puts $graveyard[0][:name]
      #$graveyard.each { |b| puts $graveyard[b][:name]}
    elsif response == "lp"
      puts "You have #{$lp}"
    elsif response == "hc"
      puts "You have #{$hand.size} cards in your hand"
    elsif response == "trp"					# Not implemented yet.
      puts "This has not been implemented yet"
    elsif response == "exit"
      $file.close
      puts "Files flushed properly"
      abort("Exiting")
    elsif response == "help"
      help
    else
      puts "This does not compute".yellow
    end
end
