class GameOfLife
  
  def initialize(*cells)
    @cells = cells
  end
  
end

class Cell < Struct.new(:x, :y)
end