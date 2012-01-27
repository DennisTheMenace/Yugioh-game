# Allows colouring of words.

# In Resources.rb? - Yes
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
