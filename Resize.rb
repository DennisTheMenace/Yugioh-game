#!/usr/bin/env ruby

# In Resources.rb? - No

def resize(file)
  img = Magick::Image.read(file).first
  img = img.scale(62,90)
  img.write("Images/Card.jpg")
  
end

