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
        grid.live_neighbours_for(1,1).should == 0
      end
    end    
  end
  
  
  
end