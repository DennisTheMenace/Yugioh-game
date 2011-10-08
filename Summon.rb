#!/usr/bin/env ruby

# Summons a monster.

def summon(area)
  playerset($testing)
  
  handmonsters = []
  if area.empty? == true
    puts "There are no monsters to summon.".red
    return
  end
  area.each { |x| 			# Adds all the monsters in your hand to the options to summon.
  if x[:type] == "monster"
    handmonsters.push(x)
  end
  }
  
  if handmonsters.empty? == true	# Outputs and error and returns if there are no monsters in your hand.
    puts "There are no monsters to summon.".red
    return
  end
  puts "What monster do you want to summon? [1,2,3,4,5,6]"
  handmonsters.each {|x| puts x[:name]} # Lists all the monsters in your hand.
  response = gets.to_i
  
  #puts response.class
  response -= 1
  mon = response
  
  if handmonsters[mon][:level] > 4
    puts "You must tribute a monster to summon this card. [1,2,3,4,5]"
    @@monsterfield.each {|a| puts a[:name]}
    response = gets.to_i
    #puts response.class
    response -= 1
    tribute = response
    puts "You tributed #{@@monsterfield[tribute][:name]}"
    $file.puts("#{$activeplayer} tributed #{@@monsterfield[tribute][:name]}")
    puts "You have summoned #{handmonsters[mon][:name]}"
    $file.puts("#{$activeplayer} summoned #{handmonsters[mon][:name]}")
    @@monsterfield.delete(@@monsterfield[tribute])
    @@monsterfield.push(handmonsters[mon])
    update
  
  else
  puts "You have summoned #{handmonsters[mon][:name]}"
  $file.puts("#{$activeplayer} summoned #{handmonsters[mon][:name]}")
  if area != @@graveyard
    #@@graveyard.push(handmonsters[mon])
    @@hand.delete(@@hand[mon])
  end 
  @@monsterfield.push(handmonsters[mon])
  update
  puts "Monster Field:"
  #@@monsterfield.each {|x| puts x[:name]}
  list(@@monsterfield)
  end
  if $graphics == 1
    screenupdate
  end
end
