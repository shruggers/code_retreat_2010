class Grid
  def initialize(cells)
    @cells = cells
  end
  
  def get(x,y)
    @cells[x][y]
  end
  
  
end