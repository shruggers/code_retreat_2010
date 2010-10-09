require 'spec_helper'
require 'code_retreat'

describe GameOfLife do
  
  context "a single cell" do
    let(:grid){[[true]]}
    it "should kill the cell" do
      game = GameOfLife.new(grid)
      game.tick
      game.grid.should == [[false]]
    end
  end
  
end