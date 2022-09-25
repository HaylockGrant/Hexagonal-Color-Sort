#Test for a differant UI. I didn't want to delete the other one quite yet
require 'gosu'
require_relative 'ColorMan'
#require_relative 'ColorBox'
require_relative 'CircleMan'

puts $global_height
class UI2 < Gosu::Window
  def initialize(width = $global_width, height = $global_height)
    super width * $global_arraylength, height * $global_arraylength
    self.caption = "Color Sort"
    color = ColorMan.new("F1F90B")
    if!(color.kind_of? ColorMan)
      raise "ColorMan expected"
    end
    @ballShape = CircleMan.new($global_width/2, color)
  end
 
  #this code is updated 60 times a second and is meant for the game logic
  def update
    if Gosu.button_down? Gosu::KB_ESCAPE
      close!
    end
  end
  
  #this code isn't allways updated 60 times a second and should be used for drawing
  def draw
    @ballShape.draw($global_width/2, $global_height * 2, absolute:true)
  end

  def start
    show
  end
end

