#!/usr/bin/env ruby

# In Resources.rb? - Yes

# Will probably completely rewrite this when I want to get 2 player working again
# For now it can sit here even though it's useless

def battle
  playerset($testing)
  fieldmonsters = []
  efieldmonsters = []
  @@monsterfield.each { |x| 
  if x[:type] == "monster"
    fieldmonsters.push(x)
  end
  }
  if fieldmonsters.empty? == true	
    puts "There are no monsters to battle with".red
    return
  end
  @@emonsterfield.each { |x| 			
  if x[:type] == "monster"
    efieldmonsters.push(x)
  end
  }
  if efieldmonsters.empty? == true	
    puts "There are no enemy monsters to battle".red
    return
  end
  puts "What monster do you choose?"
  fieldmonsters.each {|x| puts x[:name]}
  response1 = gets.to_i
  response1 -= 1
  puts "You have selected #{@@monsterfield[response1][:name]}"
  puts "What monster do you want to battle?"
  efieldmonsters.each {|x| puts x[:name]}
  response2 = gets.to_i
  response2 -= 1
  answer = @@monsterfield[response1][:atk] - @@emonsterfield[response2][:atk]
  puts answer
  if answer < 0
    puts "Your monster lost the battle"
    $file.puts("#{@@name} loss a battle against #{@@ename}")
  end
  if answer == 0
    puts "Draw"
    @@graveyard.push(@@monsterfield[response1])
    @@monsterfield.delete(@@monsterfield[response1])
    @@egraveyard.push(@@emonsterfield[response2])
    @@emonsterfield.delete(@@emonsterfield[response2])
    $file.puts("#{@@name} drew in a battle against #{@@ename}")
  end
  if answer > 0
    puts "Your monster won the battle"
    $file.puts("#{@@name} won a battle against #{@@ename}")
    decreaselp('enemy', answer)
  end
end
