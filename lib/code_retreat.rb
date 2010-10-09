class GameOfLife
  
  def initialize(*cells)
    @cells = cells
  end
  
  def tick
    []
  end
  
  def count_alive_neighbours(cell)
    0
  end
  
end

class Cell < Struct.new(:x, :y)
end