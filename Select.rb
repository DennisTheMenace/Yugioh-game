#!/usr/bin/env ruby

# In Resources.rb? - No

# Hasn't been tested yet

def select(para)
  playerset($testing)
  puts "Which card?"
  list(para)
  response = gets.to_i
  response -= 1
  choice = response
  
  
  return choice
end
