#set up gems
#!/usr/bin/env ruby
require 'color_sort'
#require_relative 'DistanceMap'
#require_relative 'UI'
#initilize the colors
unsorted_colors = ["fbba00","faef73","e4e025","f0e436","feed01","c5dda9","c8c8c8","d2c2dd","ffffff","daeeed","00b0c7","00a0d0","6397c6","006376","8d4f92","6f307f","8d135e","731e25","3e150f","b81528","b0131e","e5321b","ed5a15","ef7510","ed8a0b","f4a88e","e93e50","82441f","875a45","523b1b","645f25","072432","0b0b0b","0c1514","003020","005029","026e57","66b99b","7fb225"]
#unsorted_gradient = ["2AA8F2","33A4E7","3BA0DB","449CD0","4C98C4","5594B9","5E90AE","668CA2","6F8897","77848B","2AA8F2","2697DA","2286C2","1D76A9","196591","155479","114361","0D3249","082230","041118"]
unsorted_gradient = ["2AA8F2","33A4E7","3BA0DB","449CD0","4C98C4","5594B9","5E90AE","668CA2","6F8897","77848B"]
#Colorsort sorts the colors and returns sorted_colors
sorted_colors = ColorSort.sort(unsorted_colors)
sorted_gradient = ColorSort.sort(unsorted_gradient)
#output the sorted colors in order they are in relation the original list IE the first inpout is not the 32nd item on the list
for i in 0..unsorted_colors.length()-1
    for j in 0..sorted_colors.length()-1
        if unsorted_colors[i] == sorted_colors[j]
#            puts j+1
            break
        end
    end
end


#output the sorted gradient in order they are in relation the original list IE the first inpout is not the 32nd item on the list
for i in 0..unsorted_gradient.length()-1
    for j in 0..sorted_gradient.length()-1
        if unsorted_gradient[i] == sorted_gradient[j]
            puts j+1
            break
        end
    end
end


#userInterface = UI.new()
#userInterface.start()

# Time to ramble
# I need to render a hexagonal grid
# a 'circular' exagonal grid
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

#I'd like to use http://shoesrb.com/walkthrough/ for the renderer

