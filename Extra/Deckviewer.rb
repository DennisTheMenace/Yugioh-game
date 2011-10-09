#!/usr/bin/env ruby

# In Resources.rb? - No


require "rubygame"
include Rubygame
include Rubygame::Events

require_relative 'Deck.rb'
file = $deck1[0][:file]
# 
$number = 0
begin
  image = Surface.load( file )
  screen = Screen.open( image.size )
  screen.title = File.basename(file)
end
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

loop do
  events = Rubygame::Events.fetch_sdl_events
  events.each do |event|
    handler.handle( event )
  end
  image = Surface.load( $deck1[$number][:file] )
  image.blit( screen, [0,0] )
 
  screen.update
 
  sleep 1
  $number += 1
 
end
