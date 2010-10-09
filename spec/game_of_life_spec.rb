require 'spec_helper'
require 'code_retreat'

describe GameOfLife do
  
  context  "with a 3x3 grid" do
    
    context "where one is dead" do
      let(:cells){
        [[false]]
      }
      it "should leave them all as dead" do
        game = GameOfLife.new(cells)
        game.tick
        game.grid.should == [[false]]
      end
    end
    
    context "where one is alive" do
      let(:cells){
        [[true]]
      }
      it "should leave them all as dead" do
        game = GameOfLife.new(cells)
        game.tick
        game.grid.should == [[false]]
      end
    end
    
    
  end
  
end