require 'gosu'

class Color
    attr_accessor :R :G :B :H :S :L :V :gosuColor :hex
    def initialize(hex)
        @hex = hex
        @R = hex[0..1].to_i(16)
        @G = hex[2..3].to_i(16)
        @B = hex[4..5].to_i(16)
        # @H = 0
        # @S = 0
        # @L = 0
        # @V = 0
        @gosuColor = ['ff' + @hex].pack("H*")
    end