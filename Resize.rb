#!/usr/bin/env ruby
require 'RMagick'


def resize(file)
  img = Magick::Image.read(file).first
  img = img.scale(62,90)
  img.write("Images/Card.jpg")
  
end
#img = Magick::Image.read("Images/SpikeSeadra.jpg").first
#img = img.scale(62,90)
#clown.scale(0.5)
#img.write('SpikeSeadraSmall.jpg')
