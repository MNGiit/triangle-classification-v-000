class Triangle
  # write code here
  attr_accessor :one, :two, :three
  
  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end
  
  def kind
    @type = "equilateral" if @side_one == @side_two && @side_two == @side_three
  end
  
  class TriangleError < StandardError
    
  end
end
