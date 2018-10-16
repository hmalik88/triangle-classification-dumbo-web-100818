require 'pry'
class Triangle
  
  def initialize(x, y, z)
  	@x = x
  	@y = y
  	@z = z
  end

	def validate_triangle
		real_or_not = []
		if @x == 0 && @y == 0 && @z == 0
			return true
		end
		if @x + @y <= @z || @x + @z <= @y || @y + @z <= @x
			return true
		end
		[@x, @y, @z].each do |side|
				if side > 0
				real_or_not << true
				else 
				real_or_not << false
				end 
		end
		real_or_not.include?(false)
 	end

 	def kind
 		if validate_triangle == true
 			raise TriangleError
 		else
 			if @x == @y && @x == @z
 				return :equilateral
 			elsif @x == @y || @x == @z || @y == @z
 				return :isosceles
 			else
 				return :scalene
 			end
 		end
 	end
 	
 	class TriangleError < StandardError
 	end

end

