class Triangle
  # write code here
  attr_accessor :side_one, :side_two, :side_three, :type
  
  def initialize (attributes)
    attributes.each {|key, value| self.send(("#{key}="), value)}
  end
  
  def find_type
    @type = "equilateral" if @side_one == @side_two && @side_two == @side_three
  end
  
  class TriangleError < StandardError
    
  end
end
