class Report
 def report 
      render json: { location:[@x,@y,@direction.upcase]}
  end
end

