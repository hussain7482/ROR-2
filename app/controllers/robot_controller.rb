require 'move'
require 'position'
require 'rotation'
require 'report'

module Api 
 class RobotController < ApplicationController
  def orders
    @x, @y, flag=0
    @min, @max, @direction=0,4, ""
    commands=params[:Commands]
   
    for j in 0..{commands.length-1} do
       if commands[j][0]=="p"
          break
       end
    end
   
    for i in j..{commands.length-1} do
      cmd=commands[i].downcase!.gsub(","," ").split(" ")
     
      if cmd[0]=='place'
         if cmd[1].to_i <= @max && cmd[2].to_i <=@max && cmd[1].to_i >=@min 
            && cmd[2].to_i >=@min
            place(cmd[1].to_i, cmd[2].to_i,cmd[3])
        
         else
            flag=1
            break
      end
     
      elsif cmd[0] == 'move'
        move()
      elsif cmd[0] == 'left' || cmd[0] == 'right'
        rotate(cmd[0])
      elsif cmd[0] == 'report'
       report()
      end
    end
    
    if flag == 1
     render json: {"warning": "Enter valid x & y value"}
   end 
 end
