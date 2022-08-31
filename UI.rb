#using shoesrb I plan to create a test empty window
require 'shoes'

#create a new window
Shoes.app(width: 300, height: 400) do
    #create a new background
    background rgb(0, 0, 0)
    #create a new text
    para "Hello World"
    end
end
#end of the program
