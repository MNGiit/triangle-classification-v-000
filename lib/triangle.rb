class Triangle
  # write code here
  attr_accessor :side_one, :side_two, :side_three
  
  
  def initialize (attributes)
    attributes.each {|key, value| self.send("#{key=}", value)}
  end
  
  class TriangleError < StandardError
    
  end
end
