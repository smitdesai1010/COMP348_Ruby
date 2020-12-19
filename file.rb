require_relative('shape.rb')

$map = Hash.new(0)
$map = { "Shape" => 0, "Circle" => 0, "Rectangle" => 0, "Ellipse" => 0 }

def parse(line)
    
    arr = line.split

    if (arr.length() == 1)
        polygon = Shape.new
        polygon.printt

        $map["Shape"] = $map["Shape"] + 1
    end

    if (arr.length() == 2)

        if ( Integer(arr[1]) < 0 )
            puts "Error......Negative Dimensions are not allowed !!!"    
        else
            polygon = Circle.new(Integer(arr[1]))
            polygon.printt   
            
            $map["Shape"] = $map["Shape"] + 1
            $map["Circle"] = $map["Circle"] + 1
        end
    end    

    if (arr.length() == 3)

        if (arr[0] == "rectangle")
            if ( Integer(arr[1]) < 0 || Integer(arr[2]) < 0 )
                puts "Error......Negative Dimensions are not allowed !!!"    
            else
                polygon = Rectangle.new(Integer(arr[1]),Integer(arr[2]))
                polygon.printt  
                
                $map["Shape"] = $map["Shape"] + 1
                $map["Rectangle"] = $map["Rectangle"] + 1
            end

        else
            if ( Integer(arr[1]) < 0 || Integer(arr[2]) < 0 )
                puts "Error......Negative Dimensions are not allowed !!!"    
            else
                polygon = Ellipse.new(Integer(arr[1]),Integer(arr[2]))
                polygon.printt  
                
                $map["Shape"] = $map["Shape"] + 1
                $map["Ellipse"] = $map["Ellipse"] + 1
            end
        end 
    end   

    puts ""
end



IO.foreach("file.txt"){  |line| parse(line)  }

puts "\n\nStatistics"
print "\t Shape: ",$map["Shape"],"\n"
print "\t Circle: ",$map["Circle"],"\n"
print "\t Rectangle: ",$map["Rectangle"],"\n"
print "\t Ellipse: ",$map["Ellipse"],"\n"


