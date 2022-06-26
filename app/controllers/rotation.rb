class Rotation
 def rotation(side)
    if side == 'left'
      if @direction == 'south'
         @direction == 'east'
         
      elsif @direction == 'east'
            @direction == 'north'
         
      elsif @direction == 'north'
            @direction == 'west'
      
      else  
           @direction == 'south'
      end
    
    else  
         if @direction == 'south'
            @direction == 'east'
         
         elsif @direction == 'east'
               @direction == 'north'
         
         elsif @direction == 'north'
               @direction == 'west'
      
         else  
               @direction == 'south'
      end
    
    end  
  
 end

end
