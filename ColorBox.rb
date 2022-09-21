require 'gosu'
require_relative 'ColorMan'

#This class will be an object representation of the box of color I want to draw
class ColorBox
    attr_accessor :color, :boxImage
    def initialize(hex)
        @color = ColorMan.new(hex)
        @boxImage = Gosu::Image.from_blob($global_width, $global_height, @color.gosuColor * ($global_width * $global_height))
    end
end