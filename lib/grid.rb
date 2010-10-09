class Grid
  def initialize(cells)
    @cells = cells
  end
  
  def get(x,y)
    Cell.new(@cells[x][y])
  end
  
  def alive_neighbours_for(x,y)
    count = 0
    (-1..1).each do |row|
      (-1..1).each do |column|
        unless row == 0 && column == 0
          count += if get(x + row, y + row).alive?
        end
      end
    end
  end
  
  
end