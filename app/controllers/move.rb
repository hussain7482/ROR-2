class Move
 def move
     if @direction == 'north'
       if @y < @max
          @y += 1
       end
     
       elsif @direction =='south'
         if @y > @min
          @y -= 1
         end 
     
       elsif @direction =='east'
         if @x < @max
          @x += 1
         end 
       
       elsif 
         if @y > @min
          @y -= 1
         end
     end
  end

end
 
  
