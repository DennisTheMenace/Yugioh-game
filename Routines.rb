#!/usr/bin/env ruby

# In Resources.rb? - Yes

# The class which handles routines. Routines are actions which are performed when a certain event is made, such as: increasing lifepoints
# every standby phase.

class RoutineController				# Creates the class
  @@routines = []				# Sets up the variable which stores all routines
  def self.routinecheck(event)			# Method for 
    @@routines.each {|routine|
    if routine[0] == 'all'
      eval routine[1] 
    elsif routine[0] == event
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
