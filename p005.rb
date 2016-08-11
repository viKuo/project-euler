# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def factorsOf(num) 
	factors = []
	primes = [2, 3, 5, 7, 9, 11, 13, 17, 19]
	primes.each do |prime|
		while num % prime == 0
			factors << prime
			num /= prime
		end
	end
	factors
end

def combineFactors(factors, factorsOfx)
	returnFactors = factors.dup
	i = 0
	while i < factors.length do
		i2 = 0
		while i2 < factorsOfx.length do
			if factors[i] == factorsOfx[i2]
				factors.delete_at(i)
				factorsOfx.delete_at(i2)
			else
				i2 += 1
			end
		end
		i += 1
	end
	returnFactors + factorsOfx
end


factors = []
(2..20).each do |x|
	factors = combineFactors(factors, factorsOf(x))
end

p factors.inject(:*)

# 232792560