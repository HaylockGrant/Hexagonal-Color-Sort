require 'gosu'
class ColorMan
    attr_accessor :R, :G, :B, :H, :S, :L, :V, :gosuColor, :hex, :int
    def initialize(hex)
        @hex = hex
        @R = hex[0..1].to_i(16)
        @G = hex[2..3].to_i(16)
        @B = hex[4..5].to_i(16)
        @gosuColor = [@hex + 'ff'].pack("H*") #this is saved as a string of special characters]
        @int = ('FF' + @hex.to_s).to_i(16) #converts the hex string to integer form for gosu compontents
        # //R, G and B input range = 0 ÷ 255
        # //H, S and V output range = 0 ÷ 1.0
        
        var_R = (@R / 255.0)
        var_G = (@G / 255.0)
        var_B = (@B / 255.0)
        
        var_Min = [var_R, var_G, var_B].min   #Min. value of RGB
        var_Max = [var_R, var_G, var_B].max    #Max. value of RGB
        del_Max = var_Max - var_Min        #     //Delta RGB value
        
        @V = var_Max
        @L = (var_Max + var_Min) / 2.0

        if (del_Max == 0 )          #           //This is a gray, no chroma...
            @H = 0
            @S = 0
        else                           #         //Chromatic data...
            @S = del_Max / var_Max
            del_R = (((var_Max - var_R) / 6.0) + (del_Max / 2.0)) / del_Max
            del_G = (((var_Max - var_G) / 6.0) + (del_Max / 2.0)) / del_Max
            del_B = (((var_Max - var_B) / 6.0) + (del_Max / 2.0)) / del_Max
            if (var_R == var_Max) 
                @H = del_B - del_G
            elsif ( var_G == var_Max )
                @H = (1/3.0) + del_R - del_B
            elsif ( var_B == var_Max )
                @H = ( 2 / 3.0 ) + del_G - del_R
            end
            if ( @H < 0 )
                @H += 1
            end
            if ( @H > 1 )
                @H -= 1
            end
        end
    end
end