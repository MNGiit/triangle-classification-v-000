class Triangle
  # write code here
  attr_accessor :one, :two, :three
  
  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end
  
  def kind
    checkpoint
    
    if (@side_one == @side_two && @side_two == @side_three)
      :equilateral
    elsif (@side_one == @side_two || @side_one == @side_three || @side_two == @side_three)
      :isosceles
    else
      :scalene
    end
    
    #@type = :equilateral if @side_one == @side_two && @side_two == @side_three
  end
  
  def checkpoint
    is_triangle = true
    [one, two, three].each {|number| is_triangle = false if number <= 0}
    
    raise TriangleError if is_triangle == false
  end
  
  class TriangleError < StandardError
    
  end
end
