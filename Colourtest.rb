# Allows colouring of words.

require 'term/ansicolor'

class String
  include Term::ANSIColor
end

#puts "Hello, World!".red
#puts "Hello, World!".blue
#puts "Annoy me!".blink.yellow.bold
