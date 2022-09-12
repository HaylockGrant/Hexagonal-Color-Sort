#This class will be an object representation of the box of color I want to draw
require 'gosu'

class ColorBox.rb
    attr_accessor :color, :boxImage
    def initialize(color)
        @color = Gosu::Color.argb('0xff_'+color)
        @boxImage = Gosu::Image.from_blob(50, 50, @color)
    end
end