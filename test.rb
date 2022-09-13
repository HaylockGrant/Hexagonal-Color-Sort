require 'gosu'

color = '00ffff'
puts "\xff\xff\xff\xff"

SINGLE_PIXEL = Gosu::Image.from_blob(1, 1, "\xff\xff\xff\xff")
a = "\xff"
b = "\xff"
c = "\xff"
d = "\xff"
fullstring = a+b+c+d
SINGLE_PIXEL3 = Gosu::Image.from_blob(1, 1, fullstring)

fullstring = ["ffffffff"].pack("H*")
SINGLE_PIXEL2 = Gosu::Image.from_blob(1, 1, fullstring)

# fullstring = "\xff" + "\x" + color[0..1] + "\x" + color[2..3] + "\x" + color[4..5]
# SINGLE_PIXEL = Gosu::Image.from_blob(1, 1, fullstring)