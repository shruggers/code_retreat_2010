require 'spec_helper'
require 'code_retreat'

describe GameOfLife do
  
  context "you have one active cell" do
    it "should get no cell back" do
      game = GameOfLife.new(Cell.new(0,0))
      game.tick.should == []
    end
  end
  
  
  describe "count_alive_neighbours" do
    it "should return 0 for a solitary cell" do
      cell = Cell.new(0,0)
      game = GameOfLife.new(cell)
      game.count_alive_neighbours(cell)
    end
  end
  
end