#!/usr/bin/env ruby

# In Resources.rb? - No

# Basic move command

# Hasn't been tested at all yet

def move(origin, card,destination)
  playerset($testing)
  destination.push(card)
  origin.delete(card)
end
