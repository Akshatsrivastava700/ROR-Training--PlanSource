class Vehicle
    def initialize(tyre,seats)
        @tyres = tyre
        @seats = seats
    end
    
    def vehicle_type
        total = 0
        if  @seats - @tyres >= 1
            total = @tyres + @seats
        end    
            
        case total
        when 8..11
            return("car")
        when 4
            return("bike")
        else
            return("Not a Vehicle")
        end
    end
end

class Car < Vehicle
    def vehicle_type
        super
    end
end


class Bike < Vehicle
    def vehicle_type
        super
    end
end

puts(Car.new(4,5).vehicle_type)
puts(Bike.new(2,4).vehicle_type)
