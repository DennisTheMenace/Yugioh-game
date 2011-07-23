#!/usr/bin/env ruby

def command(player)
    playerset
    response = gets.chomp
    if response == "smn"
      summon($hand1)
    elsif response == "spl"
      spell("#{$activeplayer}")
    elsif response == "mf"
      puts 'Monster field:'
      puts $monsterfield[0][:name]
      #$monsterfield.each { |b| puts $monsterfield[b]}
    elsif response == "gv"
      puts 'Graveyard:'
      list(@@graveyard)
      #$graveyard.each { |b| puts $graveyard[b][:name]}
    elsif response == "lp"
      puts "You have #{$lp}"
    elsif response == "hc"
      puts "You have #{$hand1.size} cards in your hand"
    elsif response == "trp"					# Not implemented yet.
      puts "This has not been implemented yet"
    elsif response == "exit"
      $file.close
      sleep 1
      puts "Files flushed properly"
      sleep 1
      abort("Exiting")
    elsif response == "turn"
      puts $activeplayer
    elsif response == "help"
      help
    # Testing commands:
    elsif response == "rpt"
      puts "Not ready yet".yellow
    
    else
      puts "This does not compute".yellow
    end
end
