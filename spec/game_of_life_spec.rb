require 'spec_helper'
require 'game_of_life'

describe GameOfLife do
  
  context "a single cell" do
    context "where the cell is dead" do
      let(:grid){[[false]]}
      it "should kill the cell" do
        game = GameOfLife.new(grid)
        game.tick
        game.grid.should == [[false]]
      end
    end
    context "where the cell is alive" do
      let(:grid){[[true]]}
      it "should kill the cell" do
        game = GameOfLife.new(grid)
        game.tick
        game.grid.should == [[false]]
      end
    end
  end
  
  context "a 2x2 grid" do
    context "where three cells are live" do
      let(:grid){[[true, false],[true, true]]}
      it "should spawn the remaining dead cell" do
        game = GameOfLife.new(grid)
        game.tick
        game.grid.should == [[true, true],[true, true]]
      end
    end
  end
  
end