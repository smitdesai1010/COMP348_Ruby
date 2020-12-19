class Shape

     def initialize
     end
     
     def printt
         puts self.class.name
         print "\t Perimeter: "
         puts self.perimeter

         print "\t Area: "
         puts self.area
     end

     def perimeter
        return
     end

     def area
        return
     end

end


class Circle < Shape
    @radius = 0
    
    def initialize(r)
        @radius = r
    end

    def perimeter
        return 2*3.14*@radius
    end

    def area
        return 3.14*@radius*@radius
    end

end


class Rectangle < Shape
    @height = 0
    @width = 0

    def initialize(h,w)
        @height = h
        @width = w
    end

    def perimeter
        if (@height == 0 || @width == 0)
            return 0
        end            
 
        return 2*(@height+@width)
    end

    def area
        return @height*@width
    end

end


class Ellipse < Shape
    @a
    @b

    def initialize(semi_major,semi_minor)
        @a = semi_major
        @b = semi_minor
    end

    def area
        return 3.14*@a*@b
    end

    def eccentricity
        return Math.sqrt( (@a**2) - (@b**2) )
    end

end
