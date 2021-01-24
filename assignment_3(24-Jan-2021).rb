class Vehicle
    def initailize(tyre,seats)
        @tyres = tyre
        @seats = seat
    end
    
    def vehicle_type
        total = @tyres + @seats
        case total
        when 8..11
            return("car")
        when 4
            return("bike")
        else
            return("Not Found")
        end
    end
end

class Car < Vehicle
    def vehicle_type
        super
    end
end

puts(Car.new(4,4).vehicle_type)
