#!/usr/bin/env ruby

# In Resources.rb? - Yes

class RoutineController
  #def intialize
  #  @@routines = []
  #end
  @@routines = []
  def self.routinecheck(event)
    @@routines.each {|routine|
    if routine[0] == event
      eval routine[1]
    end
    }
  end
  def self.addroutine(event,action)
    @newroutine = [event,action]
    @@routines.push(@newroutine)
  end
end

def routinecheck(event)
  RoutineController.routinecheck(event)
end
