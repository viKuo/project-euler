# Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome?(num)
	num.to_s == num.to_s.reverse ? true : false
end

def findLargestPalindrome
	palindromes = []
	num1 = 999
	while num1 >= 100
		num2 = num1
		while num2 >= 100
			if palindrome?(num1*num2)
				palindromes << num1*num2
			end
			num2 -= 1
		end
		num1 -=1
	end
	palindromes.max
end

p findLargestPalindrome

# 906609