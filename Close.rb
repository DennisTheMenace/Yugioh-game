#!/usr/bin/env ruby

# In Resources.rb? - Yes

# Method for safely closing the game

def close
  $file.close				# Closes the log file
  puts "Files flushed properly"		# Basically means that file has been closed properly instead of force quitting which MAY/COULD result in 						#memory leaks
  abort("Exiting")			# Actually exits the game but not before outputting 'Exiting'
end
