require 'gosu'
require_relative 'ColorMan'

color = 0xff_F1F90B
puts color.to_s + ' ' + color.class.to_s

color2 = ColorMan.new("F1F90B")
puts color2.int
# fullstring = "\xff" + "\x" + color[0..1] + "\x" + color[2..3] + "\x" + color[4..5]
# SINGLE_PIXEL = Gosu::Image.from_blob(1, 1, fullstring)