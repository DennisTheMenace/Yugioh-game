#!/usr/bin/env ruby

# In Resources.rb? - No

# Move a card to the hand.

def move(area)
  options = []
  area.each { |f| options.push(f) }
  puts "Which card? [1,2,3,4,5]"
  options.each { |o| puts o[:name]}
  response = gets.to_i
  response -= 1
  $hand.push(area[response])
  area.delete[response]
end
