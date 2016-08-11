# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def squareSum(num)
	((num + 1)*num/2)**2
end

def sumOfSquares(num)
	sum = 0
	num.times do |x|
		sum = sum + ((x+1)**2)
	end
	sum
end

p squareSum(100) - sumOfSquares(100) 

# 25164150
