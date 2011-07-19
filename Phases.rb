def activephase
  if $activephase == 0
    5.times do draw("yes") end
    puts "Your hand consists of #{$hand[0][:name]},#{$hand[1][:name]},#{$hand[2][:name]},#{$hand[3][:name]},#{$hand[4][:name]}"
  end
  if $activephase == 1
    puts "Draw Phase"
    draw("yes")
    
end
if $activephase == 2
     #puts "Standby phase"
  end
  while $activephase == 3
    puts "Main phase 1"
    #puts "Test discard? [y to agree]"
    #a = gets.chomp
    #if a == "y"
    #  discard(gets.chomp)
    #end
    
    #puts "What would you like to do? Summon a monster[smn], Attack with a monster[atk] Activate spell[spl], Activate Trap[trp]"
    
    
    command
    puts "End phase? [Y,y]"
    response = gets.chomp
    case response
    when /[Y,y]/
      $activephase = 4
    end
    
  end
  if $activephase == 4
    puts "Main phase 2"
     
  end
  if $activephase == 5
     puts "End phase"
     if $hand.size > 6
       discard("all")
     end
     puts "End turn?"
     
     response = gets.chomp
     $turncount += 1
     $file.puts("#{$usr} Ended turn #{$turncount}")
     
  end    
  if $deck.size == 0					# If your deck becomes 0 at the end of your turn you lose.
    $lp = 0
    puts "You ran out of cards to draw"
    puts "Game over!"
    puts $turncount
    $file.close
  end
  $activephase += 1
  if $activephase > 5 # After "End phase" returns the active phase back to draw phase.
    $activephase = 1
  end
end
