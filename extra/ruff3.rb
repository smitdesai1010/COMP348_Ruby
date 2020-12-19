module MathLibrary
    PI = 3.14159265
    def MathLibrary.factorial(n)
        if n == 0
            1
        else
            n * factorial(n-1)
        end
    end

    def MathLibrary.reflect
        "#{self.class.name}(\##{self.Object_id}):#{self.to_s}"
    end
end

puts MathLibrary::PI
puts MathLibrary.factorial(5)
puts MathLibrary.reflect