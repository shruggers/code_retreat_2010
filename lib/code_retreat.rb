class GameOfLife
  
  def initialize(cells)
    @cells = cells
  end
  
  def tick
    []
  end
  
  def count_alive_neighbours(cell)
    count = 0
    (-1..1).each do |row|
      (-1..1).each do |column|
        unless row == 0 && column == 0
          count += 1 if @cells.include?(Cell.new(cell.x + row, cell.y + column))
        end
      end
    end
    count
  end
  
end

class Cell < Struct.new(:x, :y)
end