class Triangle
  # write code here
    attr_reader :a, :b, :c

    def initialize(a, b, c)
      @a = a
      @b = b
      @c = c
    end

    def kind
      validate_triangle
      if a == b && b == c
        :equilateral
      elsif a == b || b == c || a == c
        :isosceles
      else
        :scalene
      end
    end

    def validate_triangle
      real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
      [a, b, c].each do |side|
      #   real_triangle << false if side <= 0 
      # raise TriangleError if real_triangle.include?(false)
      if side <= 0
        real_triangle << false
      end
  
      if real_triangle.include? (false)
        #begin
        raise TriangleError
        #rescue TriangleError => error
        #puts error.message
        #end
      end
    end
  end
  
    class TriangleError < StandardError
      def message
        "Its not a valid triangle!"
      end
    end
end
