class Test
    @@class_variable = 3
    CONST = 2.freeze
    def initialize()
        @instance_variable = 1
    end
    
    def sum()
        
        local_variable = 4
        
        return(@instance_variable + @@class_variable + CONST + local_variable)
    end
    
end

t = Test.new()

puts( t.sum() )
