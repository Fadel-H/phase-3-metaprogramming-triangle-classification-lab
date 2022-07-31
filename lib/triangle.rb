class Triangle
  attr_accessor :side_1, :side_2, :side_3

  def initialize side_1, side_2, side_3
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
      sum_1 = side_2 + side_3
      sum_2 = side_1 + side_3
      sum_3 = side_1 + side_2

    if !(sum_1 > side_1 && sum_2 > side_2 && sum_3 > side_3)
        raise TriangleError
    elsif side_1 == side_2 && side_2 == side_3
     return :equilateral
    elsif side_1 == side_2 || side_1 == side_3 || side_2 == side_3
      return :isosceles
    else
      return  :scalene
    end
  end


  class TriangleError < StandardError
    "The side lengths are not valid for a triangle"
  end
end
