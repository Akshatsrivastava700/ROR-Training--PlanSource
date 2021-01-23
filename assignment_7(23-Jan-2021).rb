class CheckPrime
    def if_prime(n)
    ('1' * n) !~ /^1?$|^(11+?)\1+$/
    end
    
    def find_prime
        for n in 0..100
            if if_prime(n)
                puts( n.to_s[-1] == '7' ? "#{n} is prime --> Skipped" : "#{n} is prime --> True")
            else
                puts( "#{n} is prime --> False" )
            end
        end
    end
end

c = CheckPrime.new
c.find_prime
