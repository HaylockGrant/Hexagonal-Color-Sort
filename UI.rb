#using tk I plan to create a test empty window
#!/usr/bin/env ruby
require 'tk'

class UI
    root = TkRoot.new { title "Hexagonal Grid" }

    def init
        return Tk.mainloop()

    end
end
