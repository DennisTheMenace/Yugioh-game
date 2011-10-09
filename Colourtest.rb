# Allows colouring of words.

# In Resources.rb? - Yes

require 'term/ansicolor'

class String
  include Term::ANSIColor
end

