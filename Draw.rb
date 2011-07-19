#!/usr/bin/env ruby

# Creates a random number and uses that to add a random card to the hand and then deletes it from the deck.

$hand = [] # Sets hand to empty before game.
#$deck.delete($deck[1])
def draw(x) 

  draw = rand($deck.size)
  #puts draw
  
  if x == "yes"
    puts "you drew the card #{$deck[draw][:name]}"
    $file.puts("#{$usr} drew #{$deck[draw][:name]}")
  elsif x == "no"
    puts "you drew the card #{$deck[draw][:name]}"
  else
  puts "Please specify a correct draw variable."
  end
  $hand.push($deck[draw])
  $deck.delete($deck[draw])
end
