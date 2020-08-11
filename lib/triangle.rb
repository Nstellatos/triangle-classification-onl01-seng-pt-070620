class Triangle
  def initialize(side_1, side_2, side_3)
    @triangle_sides = []
    @triangle_sides << side_1
    @triangle_sides << side_2
    @triangle_sides << side_3
  end

  def valid?
    sum_one_two = @triangle_sides[0] + @triangle_sides[1]
    sum_one_three = @triangle_sides[0] + @triangle_sides[2]
    sum_two_three = @triangle_sides[1] + @triangle_sides[2]

    if (@triangle_sides.none? {|side| side <= 0}) &&
      (sum_one_two > @triangle_sides[2] && sum_one_three > @triangle_sides[1] && sum_two_three > @triangle_sides[0])
      return true
    else
      return false
    end
  end

  def kind
    if valid?
      if @triangle_sides.uniq.length == 1
        return :equilateral
      elsif @triangle_sides.uniq.length == 2
        return :isosceles
      else
        return :scalene
      end
    else
      raise TriangleError
    end
  end


class TriangleError < StandardError

end
end














# class Triangle 
#   attr_reader :size_1, :size_2, :size_3
#   def initialize(size_1,size_2, size_3)
#   @size_1 = size_1
#   @size_2 = size_2
#   @size_3 = size_3
# end
# def kind()
# if size_1 == size_2 && size_2 == size_3
#     :equilateral
#   elsif 
#   size_1 == size_2 || size_2 == size_3 || size_1 == size_3
#   :isosceles
# else
#   :scalene
# end
# end
# def valid?
#   valid_triangle = [(size_1 + size_2 > size_3), (size_1 + size_3 > size_2), (size_2 + size_3 > size_1)]
#   [size_1,size_2,size_3].each {|s| valid_triangle << false if s <= 0 }
#     raise TriangleError if valid_triangle.include?(false)
#   end

# class TriangleError < StandardError
  
  
# end
# end
