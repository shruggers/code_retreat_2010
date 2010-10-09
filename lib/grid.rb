class Grid
  def initialize(cells)
    @cells = cells
    @cell_objects = [[]]
  end
  
  def get(x,y)
    Cell.new(@cells[x][y])
  end
  
  def alive_neighbours_for(x,y)
    count = 0
    (-1..1).each do |row|
      (-1..1).each do |column|
        unless row == 0 && column == 0
          count += 1 if get(x + row, y + column).alive?
        end
      end
    end
    count
  end
  
  
end