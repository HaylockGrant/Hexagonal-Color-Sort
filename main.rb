require 'color_sort'
require 'gosu'
#require_relative 'UI'
require_relative 'ColorMan'
require_relative 'ColorBox'
require_relative 'UItwo'
#require_relative 'DistanceMap'

#initilize the colors
unsorted_colors = ["fbba00","faef73","e4e025","f0e436","feed01","c5dda9","c8c8c8","d2c2dd","ffffff","daeeed","00b0c7","00a0d0","6397c6","006376","8d4f92","6f307f","8d135e","731e25","3e150f","b81528","b0131e","e5321b","ed5a15","ef7510","ed8a0b","f4a88e","e93e50","82441f","875a45","523b1b","645f25","072432","0b0b0b","0c1514","003020","005029","026e57","66b99b","7fb225"]
$global_width = 30
$global_height = 30
$global_arraylength = unsorted_colors.length()
#Colorsort sorts the colors and returns sorted_colors
sorted_colors = ColorSort.sort(unsorted_colors)

#output the sorted colors in order they are in relation the original list IE the first inpout is not the 32nd item on the list
for i in 0..unsorted_colors.length()-1
    for j in 0..sorted_colors.length()-1
        if unsorted_colors[i] == sorted_colors[j]
            #puts j+1
            break
        end
    end
end
#userInterface = UI.new(sorted_colors.length(), sorted_colors, unsorted_colors)
#userInterface.start()

userInterface2 = UITwo.new()
userInterface2.start()


# Time to ramble
# I need to render a hexagonal grid
# a circular hexagonal grid
# the equation for the size a certain 'length' of grid can hold is F(n) = 1 + 6 ((n(n-1)/2)
# to calculate the size of the grid you need you need to use the quadradic formula, choose the positive option, then round up
# Great. now we have a grid. I don't know how to render it in cartesian style for ya know. a compter screen, but I choose to use the Axial coordinates system
# I also plan on locking the blackest paint in the middle
# To sort the colors I'm going to use the color 

#Quote from https://www.redblobgames.com/grids/hexagons/
#  The axial coordinate system, sometimes called “trapezoidal” or “oblique” or “skewed”,
#  is the same as the cube system except we don't store the s coordinate. Since we have 
#  a constraint q + r + s = 0, we can calculate s = -q-r when we need it.
#https://en.wikipedia.org/wiki/Centered_hexagonal_number to calculate the size of the hexagon needed

#Colorspace is quite the complex thing... I'm not sure what I'm going to do to integrate everythin
#https://www.alanzucconi.com/2015/09/30/colour-sorting/
#https://www.easyrgb.com/en/math.php

#I'd like to use gosu for the renderer

