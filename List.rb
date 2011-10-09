#!/usr/bin/env ruby

# In Resources.rb? - Yes

# A handy function which lets you list(output line by line) any area in the game you want

# INSTRUCTIONS:

# Just type - 'list(area)'
# Replace area with the area variable you want to list e.g. @@hand, @@graveyard, @@monsterfield



def list(area)
  area.each {|x| puts x[:name]}
end
