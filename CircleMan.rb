require "gosu"
require_relative 'Circle'

class CircleMan
  attr_reader :radius, :color, :image

  def initialize(radius, colorMan = ColorMan.new("FFFFFF"))
    @radius = radius
    @color = ColorMan
    @image = Gosu::Image.new(Circle.new(@radius))
  end

  def draw(x,y, absolute:false, color:@color)
    if(!absolute)
      x = x - @radius
      y = y - @radius
    end
    @image.draw(x,y,0,1.0,1.0,color.int)
  end
end