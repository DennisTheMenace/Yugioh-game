def activephase(currentplayer)
  if $activephase == 0
    5.times do draw(0,"yes") end
    5.times do draw(1,"yes") end
    puts "Your hand consists of #{$hand1[0][:name]},#{$hand1[1][:name]},#{$hand1[2][:name]},#{$hand1[3][:name]},#{$hand1[4][:name]}"
    $activephase += 1
  end
  #if $activeplayer
  #playername = 
  if $activephase == 1
    #print $activeplayer
    #puts "#{$player1area)}'s turn"
    playerset
    puts @@name
    puts "#{@@name}'s turn"
    puts "Draw Phase"
    draw($activeplayer,"yes")
    
end
if $activephase == 2
     #puts "Standby phase"
  end
  while $activephase == 3
    playerset
    puts "Main phase 1"
    #puts "Test discard? [y to agree]"
    #a = gets.chomp
    #if a == "y"
    #  discard(gets.chomp)
    #end
    
    #puts "What would you like to do? Summon a monster[smn], Attack with a monster[atk] Activate spell[spl], Activate Trap[trp]"
    
    command($activeplayer)
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
     puts "Current player is #{$activeplayer}"
     puts $activeplayer
     puts currentplayer
     sleep 1
     if currentplayer == "0"
      hand = $player1area[0]
      deck = $player1area[1]
      graveyard = $player1area[2]
      puts "Set"
    end
    if currentplayer == "1"
      hand = $player2area[0]
      deck = $player2area[1]
      graveyard = $player2area[2]
      puts "Set"    
     end
     hand = $player1area[0]
     puts "End phase"
     if hand.size > 6
       discard('all',$activeplayer)
     end
     puts "End turn?"
     
     response = gets.chomp
     $turncount += 1
     sleep 1
     $file.puts("#{$usr1} Ended turn #{$turncount}")
     puts "Ended turn"
  end    
  if $deck1.size == 0					# If your deck becomes 0 at the end of your turn you lose.
    $lp = 0
    puts "You ran out of cards to draw"
    puts "Game over!"
    puts $turncount
    $file.close
  end
  $activephase += 1
  if $activephase > 5 # After "End phase" returns the active phase back to draw phase.
    #$activeplayer += 1 unless $activeplayer == 1
    #$activeplayer -= 1 unless $activeplayer == 0
    $activephase = 1
  end
  puts $activeplayer
  
end
