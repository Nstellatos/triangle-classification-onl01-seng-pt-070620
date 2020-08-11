class Triangle 
  attr_reader :size_1, :size_2, :size_3
  def initialize(size_1,size_2, size_3)
  @size_1 = size_1
  @size_2 = size_2
  @size_3 = size_3
end
def kind()
if size_1 == size_2 && size_2 == size_3
    :equilateral
  elsif 
  size_1 == size_2 || size_2 == size_3 || size_1 == size_3
  :isosceles
else
  :scalene
end
 
 

end
end 


# # def valid?
# #   valid_triangle = [(size_1 + size_2 > size_3), (size_1 + size_3 > size_2), (size_2 + size_3 > size_1)]
# #   [size_1,size_2,size_3].each {|s| valid_triangle << false if s <= 0 }
# #     raise TriangleError if valid_triangle.include?(false)
# #   end
# # end

class TriangleError < StandardError
  
  
end
