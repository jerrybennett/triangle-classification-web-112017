class Triangle
  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(a, b, c)
    @sides = [a, b, c].sort
  end

  def kind
    if @sides.any? {|i| i <= 0} || @sides[0] + @sides[1] <= @sides[2]
      # begin
        raise TriangleError
      # rescue TriangleError => error
      #   puts error.message
      # end
    elsif @sides[0] == @sides[2]
      :equilateral
    elsif @sides[0] == @sides[1] || @sides[1] == @sides[2]
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError
  def message
    "The length of one or more of the sides is invalid. Please try again."
  end
end
