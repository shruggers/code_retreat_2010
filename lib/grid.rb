class Grid
  def initialize(cells)
    @cells = cells
  end
  
  def get(x,y)
    Cell.new(@cells[x][y])
  end
  
  
end