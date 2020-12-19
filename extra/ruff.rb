class Abc
    @A = 10
    attr_accessor :B, :c
    
    def initialize(a,b,c)
        @A = a
        @B = b
        @c = c
    end

    def getA
        @A
    end
end



obj = Abc.new(212,123421,1)

def obj.hello()
    puts "Pravin Desai"
end

puts "Value: #{obj.getA()}, #{obj.B}, #{obj.c}"
obj.hello()

puts obj.respond_to?("hello")

puts Abc.new(1,1,1).respond_to?("hello")

puts obj.instance_variables