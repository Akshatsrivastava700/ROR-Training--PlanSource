require 'set'

temp = Set[16, 8, 3, 5, 2] 
puts(temp.size())

def temp.size
    puts("new size")
end

puts(temp.size)

#----------------------OR-----------------------------#

require 'set'

temp = Set[16, 8, 3, 5, 2] 
puts(temp.size())

class Set
    def size
        puts("new size")
    end
end

s = Set.new

puts(temp.size())

