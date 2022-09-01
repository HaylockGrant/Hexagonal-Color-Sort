#using tk I plan to create a test empty window
#!/usr/bin/env ruby
require 'tk'

class UI
    attr
    def initialize
        @root = TkRoot.new { title "Hexagonal Grid" }
    end

    def start()
        @root.mainloop
    end
end

