require 'spec_helper'
require 'code_retreat'

describe GameOfLife do
  
  context "you have one active cell" do
    it "should get no cell back" do
      game = GameOfLife.new(Cell.new(0,0))
      game.tick.should == []
    end
  end
  
end