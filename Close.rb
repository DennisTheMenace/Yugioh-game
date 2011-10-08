#!/usr/bin/env ruby

def close
  $file.close
  #sleep 1
  puts "Files flushed properly"
  #sleep 1
  abort("Exiting")
end
