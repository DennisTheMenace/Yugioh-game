#!/usr/bin/env ruby

# In Resources.rb? - Yes

# Help command

def help
  helpcmd = "
*Commands:

1. smn = Summon a monster
2. spl = Activate spell card
3. trp = Set a trap
4. lp = Show lifepoints
5. hc = Show hand count
6. mf = Show monster field
7. gv = Show graveyard
8. exit = Exit's the game
9. help = Lists commands and can also give you a tutorial*
10. btl = Battle an enemy monster with one of your own		* Only in 2 player mode
11. turn = Output the current players turn

* Tutorial coming soon...
"
  #options = ["Getting started", "Commands"]
  #options.each {|x| puts x}
  #response = gets.chomp
  #response = 1
  #case response
  #when /[1]/
  #    mystring = ''
  #    File.open("Gettingstarted", "r") { |f|
  #    mystring = f.read}
  #    puts mystring
  #when /[2]/		# Shows the commands list
  #    mystring = ''
  #    File.open("Commands", "r") { |f|
  #    mystring = f.read}
  #    puts mystring
      #puts helpcmd
  #end
  puts helpcmd

end
