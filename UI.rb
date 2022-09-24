#using gosu i plan to create a UI
require 'gosu'
require_relative 'ColorMan'
require_relative 'ColorBox'
require_relative 'Circle'

puts $global_height
class UI < Gosu::Window
  def initialize(arraylength, sorted_colors, unsorted_colors)
    super $global_width * arraylength, $global_height*5
    self.caption = "Color Sort"
    @sorted_images = []
    @unsorted_images = []
    for i in 0..sorted_colors.length()-1
        @sorted_images[i] = ColorBox.new(sorted_colors[i])
    end
    for i in 0..unsorted_colors.length()-1
        @unsorted_images[i] = ColorBox.new(unsorted_colors[i])
    end

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
    for i in 0..@unsorted_images.length()-1
      @unsorted_images[i].boxImage.draw(i*$global_width, $global_height *0)
    end

    for i in 0..@sorted_images.length()-1
        @sorted_images[i].boxImage.draw(i*$global_width, $global_height * 1)
    end

    #@ballShape.draw($global_width/2, $global_height * 2, 0.0, 1.0, 1.0, @sorted_images[0].color.gosuColor)
    #@ballShape.draw($global_width/2, $global_height * 2, 0, 1.0, 1.0, 0xff_F1F90B)
    @ballShape.draw($global_width/2, $global_height * 2, 0, 1.0, 1.0, @sorted_images[0].color.int)
  end

  def start
    show
  end
end

