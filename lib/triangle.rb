class Triangle
  # write code here
  attr_accessor :x, :y, :z
  
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end
  
  def kind
    @type = "equilateral" if @side_one == @side_two && @side_two == @side_three
  end
  
  class TriangleError < StandardError
    
  end
end
