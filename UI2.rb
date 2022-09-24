#Test for a differant UI. I didn't want to delete the other one quite yet
require 'gosu'
require_relative 'ColorMan'
require_relative 'ColorBox'
require_relative 'CircleMan'

puts $global_height
class UI < Gosu::Window
  def initialize(width = $global_width, height = $global_height)
    super width * $global_arraylength, height * global_arraylength
    self.caption = "Color Sort"

    @ballShape = Gosu::Image.new(Circle.new($global_width/2))
  end
 
  #this code is updated 60 times a second and is meant for the game logic
  def update
    if Gosu.button_down? Gosu::KB_ESCAPE
      close!
    end
  end
  
  #this code isn't allways updated 60 times a second and should be used for drawing
  def draw
    for i in 0..@sorted_images.length()-2
        @ballShape.draw(i*$global_width + $global_width/2, $global_height * 2, 0, 1.0, 1.0, @sorted_images[i].color.int)
    end
  end

  def start
    show
  end
end

