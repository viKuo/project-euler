# Find the sum of all the primes below two million.

primes = [2]
i = 3

def isPrime?(num, primes)
	limit = Math.sqrt(num).ceil
	primes.each do |prime| 
		if num % prime == 0 
			return false
		end
		if prime > limit
			return true
		end
	end
end

until i >= 2000000
	if isPrime?(i, primes)
		primes << i
	end
	i += 1
end

p primes.inject(:+)

# 142913828922
