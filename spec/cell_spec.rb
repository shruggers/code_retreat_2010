require 'spec_helper'
require 'code_retreat'

describe Cell do
  
  describe "alive?" do
    context "where passed true" do
      it "should be alive" do
        Cell.new(1,true).should be_alive
      end
    end
    context "where passed false" do
      it "should not be alive" do
        Cell.new(1,false).should_not be_alive
      end
    end
    context "where not passed anything" do
      it "should return false" do
        Cell.new(1).should_not be_alive
      end
    end
  end
  
end
