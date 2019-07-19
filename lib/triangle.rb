class Triangle
  attr_accessor :side1, :side2, :side3
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    is_valid
    if @side1 == @side2 && @side2== @side3
      :equilateral
      elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      :isosceles
    else
      :scalene
    end
  end
  
  def is_valid
  triangles = [(side1 + side2 > side3), (side2 + side3 > side1), (side1 + side3 > side2)]
  sides = [side1, side2, side3]
    sides.each do |side| 
      triangles << false if side <= 0
  end
  raise TriangleError if triangles.include?(false)
  end

  class TriangleError < StandardError
  end
end
