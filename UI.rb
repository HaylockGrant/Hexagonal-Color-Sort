#using gosu i plan to create a UI
require 'gosu'
require_relative 'ColorBox'

class UI < Gosu::Window
  def initialize(height, sorted_colors)
    super $global_width, $global_height*height
    self.caption = "Color Sort"
    @sorted_images = []
    for i in 0..sorted_colors.length()-1
        @sorted_images[i] = ColorBox.new(sorted_colors[i])
    end
  end
 
  #this code is updated 60 times a second and is meant for the game logic
  def update
    
  end
  
  #this code isn't allways updated 60 times a second and should be used for drawing
  def draw
    for i in 0..@sorted_images.length()-1
        @sorted_images[i].boxImage.draw(0, i*$global_height, 0)
    end
  end

  def start
    show
  end
end

