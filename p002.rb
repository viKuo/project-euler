# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

i = 1
fibonacci_past= 0
fibonacci_current = 1
sum = 0
while fibonacci_current <= 4000000
  fibonacci_current += fibonacci_past
  fibonacci_past = fibonacci_current - fibonacci_past
  if fibonacci_current % 2 == 0
    sum += fibonacci_current
  end
  i += 1
end
p sum

# 4613732