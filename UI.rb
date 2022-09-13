#using gosu i plan to create a UI
require 'gosu'
require_relative 'ColorMan'
require_relative 'ColorBox'

puts $global_height
class UI < Gosu::Window
  def initialize(arraylength, sorted_colors)
    super $global_width * arraylength, $global_height*2 + $global_offset
    self.caption = "Color Sort"
    @sorted_images = []
    for i in 0..sorted_colors.length()-1
        @sorted_images[i] = ColorMan.new(sorted_colors[i])
    end
  end
 
  #this code is updated 60 times a second and is meant for the game logic
  def update
    if Gosu.button_down? Gosu::KB_ESCAPE
      close!
    end
  end
  
  #this code isn't allways updated 60 times a second and should be used for drawing
  def draw
    for i in 0..@sorted_images.length()-1
        @sorted_images[i].boxImage.draw(i*$global_width, 0 + $global_offset)
    end
  end

  def start
    show
  end
end

