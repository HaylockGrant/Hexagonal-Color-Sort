require "gosu"
require_relative 'Circle'
require_relative 'ColorMan' 
class CircleMan
  attr_reader :radius, :color, :image

  def initialize(radius, colorMan = ColorMan.new("FFFFFF"))
    @radius = radius
    @color = colorMan
    @image = Gosu::Image.new(Circle.new(@radius))
    if !(@color.kind_of? ColorMan)
      raise "ColorMan expected"
    end
  end

  def draw(x,y, absolute:false, color:@color)
    if(!absolute)
      x = x - @radius
      y = y - @radius
    end
    puts color.class.to_s
    color = color.intC
    @image.draw(x,y,0,1.0,1.0,color)
  end
end