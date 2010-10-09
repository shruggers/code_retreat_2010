class Cell
  def initialize(neighbours, state = false)
    @state = state
  end
  
  def alive?
    @state
  end
  
  
end