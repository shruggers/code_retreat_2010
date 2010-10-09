require 'spec_helper'
require 'code_retreat'

describe Cell do
  
  describe "initialization" do
    context "when passed a true" do
      it "should be alive" do
        cell = Cell.new(true)
        cell.alive?.should be_true
      end
    end
    context "when passed a false" do
    end
  end
  
end