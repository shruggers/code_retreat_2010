require 'spec_helper'
require 'code_retreat'

describe Grid do

  describe "neighbours" do
    context "no alive neighbours" do
      let(:cells){
        [
          [Cell.new(false),Cell.new(false),Cell.new(false)],
          [Cell.new(false),Cell.new(false),Cell.new(false)],
          [Cell.new(false),Cell.new(false),Cell.new(false)]
        ]
      }
      it "should have no live neighbours for the centre cell" do
        grid = Grid.new(cells)
        grid.live_neighbours_for(1,1).should == 0
      end
    end
    context "all live neighbours" do
      let(:cells){
        [
          [Cell.new(true),Cell.new(true),Cell.new(true)],
          [Cell.new(true),Cell.new(false),Cell.new(true)],
          [Cell.new(true),Cell.new(true),Cell.new(true)]
        ]
      }
      it "should have no live neighbours for the centre cell" do
        grid = Grid.new(cells)
        grid.live_neighbours_for(1,1).should == 8
      end
    end    
  end
  
  describe "get" do
    let(:cells){
      [
        [Cell.new(true),Cell.new(true),Cell.new(true)],
        [Cell.new(true),Cell.new(false),Cell.new(true)],
        [Cell.new(true),Cell.new(true),Cell.new(true)]
      ]
    }
    (0..2) do |row|
      (0..2) do |column|
        it "should get the cell at the relevant coordinate for #{row} and #{column}" do
          grid = Grid.new(cells)
          grid.get(row,column).should == cells[row][column]
        end
      end
    end
  end
  
  
  
end