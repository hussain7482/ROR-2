require 'rails_helper'

RSpec.describe "Position", type: :request do
  before(:each) do
   @robot = RobotController.new 
   @robot.orders 
  end
  
  it 'is placed correctly' do
   expect(@robot.place(0, 1, :north)).to eq(true)
 end

end
  
  
