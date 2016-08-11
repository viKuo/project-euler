# What is the 10001st prime number?

primes = [2]
i = 3

def isPrime?(num, primes)
	primes.each do |prime| 
		if num % prime == 0 
			return false
		end
	end
	true
end

until primes.length == 10001
	if isPrime?(i, primes)
		primes << i
	end
	i += 1
end

p primes[-1]

# 13247