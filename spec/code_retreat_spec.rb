require 'spec_helper'
require 'code_retreat'

describe GameOfLife do
  
  context "you have one active cell" do
    it "should get no cell back" do
      game = GameOfLife.new([Cell.new(0,0)])
      game.tick.should == []
    end
  end
  
  context "where we have some active cells" do
    it "should kill any cell with more than three neighbours" do
      game = GameOfLife.new([Cell.new(0,0), Cell.new(0,1), Cell.new(1,1), Cell.new(1,0)])
      game.tick.should == []
    end
    it "should oscillate a line" do
      game = GameOfLife.new([Cell.new(0,0), Cell.new(1,0), Cell.new(2,0)])
      puts game.tick
      game.tick.should =~ [Cell.new(0,0), Cell.new(0,-1), Cell.new(0,1)]
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
        game.count_alive_neighbours(Cell.new(1,0)).should == 3
      end
      it "should have 2 alive neighbours for 0,1" do
        game = GameOfLife.new(cells)
        game.count_alive_neighbours(Cell.new(0,1)).should == 2
      end
      it "should have 2 alive neighbours for 1,1" do
        game = GameOfLife.new(cells)
        game.count_alive_neighbours(Cell.new(1,1)).should == 2
      end
    end
  end
  
end