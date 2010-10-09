require 'spec_helper'
require 'code_retreat'

describe GameOfLife do
  
  context "you have one active cell" do
    it "should get no cell back" do
      game = GameOfLife.new([Cell.new(0,0)])
      game.tick.should == []
    end
  end
  
  
  describe "count_alive_neighbours" do
    it "should return 0 for a solitary cell" do
      cell = Cell.new(0,0)
      game = GameOfLife.new([cell])
      game.count_alive_neighbours(cell).should == 0
    end
    context "where there are some neighbours" do
      let(:cells){[Cell.new(0,0), Cell.new(0,1), Cell.new(1,1)]}
      it "should have 3 alive neighbours for 1,0" do
        game = GameOfLife.new(cells)
        game.count_alive_neighbours(cell).should == 3
      end
    end
  end
  
end