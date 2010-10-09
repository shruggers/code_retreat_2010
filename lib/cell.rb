class Cell
  def initialize(neighbours, state = false)
    @neighbours = neighbours
    @state = state
  end
  
  def alive?
    @state
  end
  
  
end