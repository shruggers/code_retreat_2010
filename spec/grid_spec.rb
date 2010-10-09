require 'spec_helper'
require 'code_retreat'

describe Grid do
  
  describe "co-ordinates" do
    let(:cells){
      [[true, false, true],
      [true, false, true],
      [false, false, false]]
    }
    
    (0..2).each do |row|
      (0..2).each do |column|
        it "should have a cell for (#{row}, #{column}) with the right value" do
          grid = Grid.new(cells)
          grid.get(row, column).alive?.should == cells[row][column]
        end
      end
    end
    
  end
  
end