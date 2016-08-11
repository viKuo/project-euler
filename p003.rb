# What is the largest prime factor of the number 600851475143 ?

lpf = 600851475143
primes = [2]
num = 3

def isPrime?(num, primes)
	primes.each do |prime| 
		if num % prime == 0 
			return false
		end
	end
	true
end

until num >= lpf do
	if isPrime?(num, primes)
		if lpf % num == 0
			lpf /= num
		end
		primes << num
	end
	num += 1
end
p primes
p lpf

# 6857