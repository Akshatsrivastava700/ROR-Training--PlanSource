class CArray < Array
    def c_map
        result = []
        self.each do |x|
           result << yield(x) 
        end
        return(result)
    end
end

arr = CArray[1,2,3,4,5,6]
puts(arr.c_map { |x| x*2 })
