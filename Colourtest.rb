#!/usr/bin/env ruby

# In Resources.rb? - Yes

# Allows colouring of words.

if $colour == 1
  require 'term/ansicolor'
  class String
    include Term::ANSIColor
  end
end

def cputs(string,colour)
  if $colour == 1
    puts string.colour
  else
    puts string  
  end
end

def cprint(string,colour)
  if $colour == 1
    print string.colour
  else
    print string  
  end
end
