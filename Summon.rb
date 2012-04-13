#!/usr/bin/env ruby

# In Resources.rb? - Yes

# Summons a monster.

# INSTRUCTIONS:

# To summon a monster type - 'summon(area,parameter)'
# Replace area with the area variable you want to summon from, e.g. @@hand, @@graveyard, @@deck
# Replace parameter with false

def summon(area,parameter)
  playerset($testing)
  
  handmonsters = []
  if area.empty? == true	# Exits method if you have no Monster Cards in your hand
    puts "There are no monsters to summon.".red
    return
  end
  area.each { |x| 			# Adds all the monsters in your hand to the options to summon.
  if x[:type] == "monster"
    handmonsters.push(x)
  end
  }
  
  if handmonsters.empty? == true	# Outputs an error and returns if there are no monsters in your hand.
    cputs ("There are no monsters to summon.",'red')
    return
  end
  puts "What monster do you want to summon? [1,2,3,4,5,6]"
  handmonsters.each {|x| puts x[:name]} # Lists all the monsters in your hand.
  response = gets.to_i
  response -= 1
  mon = response
  
  if handmonsters[mon][:level] > 4
    puts "You must tribute a monster to summon this card. [1,2,3,4,5]"
    $monsterfield1.list
    response = gets.to_i
    
    response -= 1
    tribute = response
    #puts "You tributed #{@@monsterfield[tribute][:name]}"
    #$file.puts("#{$activeplayer} tributed #{@@monsterfield[tribute][:name]}")
    puts "You have summoned #{handmonsters[mon][:name]}"
    $file.puts("#{$activeplayer} summoned #{handmonsters[mon][:name]}")
    #@@monsterfield.delete(@@monsterfield[tribute])
    if area != @@graveyard
      @@hand.delete(handmonsters[mon])
    end 
    $monsterfield1.addcard(0,handmonsters[mon])
    #update						 	# Need to review this function at some point
  
  else
  puts "You have summoned #{handmonsters[mon][:name]}"
  $file.puts("#{$activeplayer} summoned #{handmonsters[mon][:name]}")
  if area != @@graveyard
    #puts "Deleting from hand"
    @@hand.delete(handmonsters[mon])
  end 
  $monsterfield1.addcard(0,handmonsters[mon])
        
  eval(handmonsters[mon][:effect])
  
  #update						 	# Refer to comment above
  puts "Monster Field:"
  $monsterfield1.list
  end
  if $graphics == 1
    screenupdate
  end
end
