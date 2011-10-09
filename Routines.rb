#!/usr/bin/env ruby

# In Resources.rb? - Yes

$routines = ['$file.puts("#{@@name} is in phase #{phase},#{state}")']#,'puts $activephase']

def routinecheck(phase ,state)
  playerset($testing)
  $routines.each { |routine|
  eval(routine)
  }
end


