class GameOfLife
  
  def initialize(*cells)
    @cells = cells
  end
  
  def tick
    []
  end
  
end

class Cell < Struct.new(:x, :y)
end