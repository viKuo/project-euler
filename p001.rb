# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.


p (0...1000).inject { |sum, num| num % 3 == 0 || num % 5 == 0 ? sum + num : sum }

# 233168