require 'pry'

class Triangle
  attr_accessor :l1, :l2, :l3

  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end

  def kind
    validates_triangle
    if l1 == l2 && l2 == l3
      :equilateral
    elsif l1 == l2 && l2 != l3
      :isosceles
    else l1 != l2 && l2 != l3
      :scalene
    end
  end

# must be larger than 0, create method that determines sides are greater than 0.

# check to make sure the sum of any 2 sides is greater than the 3rd side

def validates_triangle
  raise TriangleError
end

      class TriangleError < StandardError
      end
  end
