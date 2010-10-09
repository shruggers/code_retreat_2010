require 'spec_helper'
require 'code_retreat'

describe GameOfLife do
  
  context  "with a 3x3 grid" do
    
    context "where they are all dead" do
      let(:cells){
        [[false,false,false],
        [false,false,false],
        [false,false,false]]
      }
      
      it "should leave them all as dead" do
        game = GameOfLife.new(cells)
        game.tick
        game.grid.should == [[false]]
      end
      
    end
    
    context ""
    
    
  end
  
end