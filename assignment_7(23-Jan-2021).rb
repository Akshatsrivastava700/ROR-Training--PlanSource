class CheckPrime
    #Using Regex to check if prime?.
    def if_prime(n)
        ('1' * n) !~ /^1?$|^(11+?)\1+$/
    end
    
    def find_prime
        for n in 0..100
             if_prime(n) ? puts( n.to_s[-1] == '7' ? "#{n} is prime --> Skipped" : "#{n} is prime --> True") : puts( "#{n} is prime --> False" )
        end
    end
end

c = CheckPrime.new
c.find_prime
