class Polygon
    def initialize(length, breadth)
        @length  = length
        @breadth = breadth
    end
    
    def area
        return(@length*@breadth)
    end
end

class Rectangle < Polygon
    def area
        super
    end
end

class Square < Polygon
    def initialize(side)
        @length = side
        @breadth = side
    end
    def area
        super
    end
end

class Traingle < Polygon
    def area
        return(@length*@breadth/2)
    end
end
puts(Rectangle.new(5,5).area)
puts(Square.new(5).area)
puts(Traingle.new(4,4).area)
