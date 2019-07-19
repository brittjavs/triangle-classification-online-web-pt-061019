class Triangle
  attr_accessor :side1, :side2, :side3
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

def kind
    if @side1 <= 0 || @side2 <= 0 || @side3 <= 0
      raise TriangleError
    elsif @side1+@side2 <= @side3 || @side1+@side3 <= @side2 || 
      @side2+@side3 <= @side1
      raise TriangleError
    else
      if @side1 == @side2 && 
        @side2 == @side3
        :equilateral
      elsif @side1 == @side2 || 
        @side2 == @side3 || 
        @side1 == @side3
        :isosceles
      else
        :scalene
      end
    end
  end

  # def kind
  #   is_valid
  #   if @side1 == @side2 && @side2== @side3
  #     :equilateral
  #     elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
  #     :isosceles
  #   else
  #     :scalene
  #   end
  # end
  
  # def is_valid
  # triangles = [(side1 + side2 > side3), (side2 + side3 > side1), (side1 + side3 > side2)]
  # sides = [side1, side2, side3]
  #   sides.each do |side| 
  #     triangles << false if side <= 0
  # end
  # raise TriangleError if triangles.include?(false)
  # end

  class TriangleError < StandardError
  end
end
