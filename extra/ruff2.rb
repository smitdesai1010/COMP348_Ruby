number = 11

case number
    when 1, 3, 5, 7, 9
        puts "Odd."
    when 0, 2, 4, 6, 8, 10
        puts "Even."
    else
        puts "Number is out of range."
    end

a = 0    

while (a < 5) 
    puts a
    a += 1
end

until (a > 10)
    puts a
    a += 1
end