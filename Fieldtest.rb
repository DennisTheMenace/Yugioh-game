#!/usr/bin/env ruby

class FieldController
  def initialize
    @space1 = [0,0,0]
    @space2 = [0,0,0]
    @space3 = [0,0,0]
    @space4 = [0,0,0]
    @space5 = [0,0,0]
    @allspaces = [@space1,@space2,@space3,@space4,@space5]
  end
  def addcard(state,card)
    counter = 0
    @allspaces.each {|fieldspace|
    if fieldspace[0] == 0 and counter == 0
      fieldspace[0] = 1
      fieldspace[1] = state
      fieldspace[2] = card
      puts fieldspace
      counter = 1
    end
    }
    puts "allspaces[0]"
    puts @allspaces[0]
  end
  def removecard(card)
  counter = 0
  @allspaces.each {|fieldspace|
  if fieldspace[2] == card and counter == 0
    fieldspace[0] = 0
    counter = 1
  end
  }
  end
  def list
    @allspaces.each {|fieldspace|
    if fieldspace[0] == 1
      puts fieldspace[2][:name]
    end
    }
  end
end
