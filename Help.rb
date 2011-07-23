#!/usr/bin/env ruby
def help
  helpcmd = "
*Commands:

  1. smn = Summon a monster
  2. spl = Activate spell card
  3. trp = Trap set a trap
  4. lp = Show lifepoints
  5. hc = Show hand count
  6. mf = Show monster field
  7. gv = Show graveyard

"
  options = ["Getting started", "Commands"]
  options.each {|x| puts x}
  response = gets.chomp
  case response
  when /[1]/
      mystring = ''
      File.open("Gettingstarted", "r") { |f|
      mystring = f.read}
      puts mystring
  when /[2]/
      mystring = ''
      File.open("Commands", "r") { |f|
      mystring = f.read}
      puts mystring
      #puts helpcmd
  end
  

end
