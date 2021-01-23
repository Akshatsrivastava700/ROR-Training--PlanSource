class Cylinder
    RADIUS = 2.freeze
    def volume(h)
        return(3.14*(RADIUS**2)*h)
    end
end

c = Cylinder.new()
puts(c.volume(2))
