class Grid
  
  def initialize(cells)
    @cell = cells
  end
  
  def live_neighbours_for(x, y)
    count = 0
    (-1..1).each do |column|
      (-1..1).each do |row|
        unless row == 0 && column == 0 
          count +=1
        end
      end
    end
    count
  end
  
  def get(x, y)
    @cells[x,y]
  end
  
end