x = [1,2,3]

x.length.times do |i|
    x[i] = i if i != 0
end    

puts x