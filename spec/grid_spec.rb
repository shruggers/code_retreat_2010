require 'spec_helper'
require 'game_of_life'
require 'grid'

describe Grid do
  
  describe "coordinates" do
    
    let(:grid_array){[[true, false],[false, true]]}
    
    it "should let me access the points at the relevant co-ordiantes" do
      grid = Grid.new(grid_array)
      grid.get(0,0).should be_true
    end
    
  end
  
end