#using gosu i plan to create a UI
require 'gosu'

class UI < Gosu::Window
  def initialize
    super 640, 480
    self.caption = "Tutorial Game"
  end
  
  def update
    # ...
  end
  
  def draw
    # ...
  end

  def start
    show
  end
end

