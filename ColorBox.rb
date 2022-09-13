require 'gosu'

#This class will be an object representation of the box of color I want to draw
class ColorBox
    attr_accessor :color, :boxImage
    def initialize(color)
        @colorhex = color
        @gosuColor = ['ff' + @colorhex].pack("H*")
        @boxImage = Gosu::Image.from_blob($global_width, $global_height, @gosuColor * ($global_width * $global_height))
    end
end