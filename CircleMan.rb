require "gosu"
require_relative 'Circle'
require_relative 'ColorMan' 
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
    puts color.class.to_s
    color = color.int
    @image.draw(x,y,0,1.0,1.0,color)
  end
end