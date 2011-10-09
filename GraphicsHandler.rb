#!/usr/bin/env ruby

# In Resources.rb? - No

require "rubygame"
#require_relative 'Resources.rb'
include Rubygame
include Rubygame::Events
class MyHandler
  include Rubygame::EventHandler::HasEventHandler
end
 
handler = MyHandler.new
handler.make_magic_hooks( :q            => :exit_script,
                          :escape       => :exit_script,
                          :mouse_right  => :exit_script,
                          QuitRequested => :exit_script )

def exit_script
  exit
end

this_dir = File.dirname( __FILE__ )
$background = File.expand_path( "Images/Field.jpg", this_dir )

background = Surface.load( $background )
$screen = Screen.open( background.size )
$screen.title = File.basename($background)
background.blit( $screen, [0,0] )
$screen.update
$cardsize = [62,90]
$mfpos1 = [16,25]
$mfpos2 = [103,25]
$mfpos3 = []
$mfpos4 = []
$mfpos5 = [451,25]
$stpos1 = []
$stpos2 = []
$stpos3 = []
$stpos4 = []
$stpos5 = []
def screenupdate
  this_dir = File.dirname( __FILE__ )
  playerset($testing)
  puts @@monsterfield[0][:name]
  
  
  sleep 0.5
  #mf1 = File.expand_path( @@monsterfield[0], this_dir )
  resize(@@monsterfield[0][:file])
  
  #mf1image = Surface.load( @@monsterfield[0][:file] )
  mf1image = Surface.load( "Images/Card.jpg" )
  mf1image.blit( $screen, $mfpos1 )
  if @@monsterfield.size == 2
    puts @@monsterfield[1][:name]
    resize(@@monsterfield[1][:file])
    mf2image = Surface.load( "Images/Card.jpg" )
  mf2image.blit( $screen, $mfpos2 )
  end
  #mf2 = File.expand_path( @@monsterfield[1], this_dir )
  
  #mf3 = File.expand_path( @@monsterfield[2], this_dir )
  #mf3image = Surface.load( mf1 )
  #mf3image.blit( $screen, $mfpos3 )
  #mf4 = File.expand_path( @@monsterfield[3], this_dir )
  #mf4image = Surface.load( mf1 )
  #mf4image.blit( $screen, $mfpos4 )
  #mf5 = File.expand_path( @@monsterfield[4], this_dir )
  #mf5image = Surface.load( mf1 )
  #mf5image.blit( $screen, $mfpos5 )
  background = Surface.load( $background )
  #background.blit( $screen, [0,0] )
  puts "Updating screen..."
  sleep 1
  $screen.update
end
active = 1

#while active > 0
#   events = Rubygame::Events.fetch_sdl_events
#  events.each do |event|
#    handler.handle( event )
#  end
#  background.blit( $screen, [0,0] )
#$screen.update
#  screenupdate
#sleep
#end
