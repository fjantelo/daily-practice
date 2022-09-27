# Write a function that gives the Nth number of the Fibonacci Sequence. The Fibonacci sequence begins with 0 and 1, and every number thereafter is the sum of the previous two numbers. So the sequence goes like this:

# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, and so on until infinity...

# Input: 9
# Output: 21 (as this is the 9th number of the Fibonacci Sequence)

def fibonacci_numbers(input)
  index = 2
  numbers = [0, 1]
  while index < input
    numbers << numbers[index - 2] + numbers[index - 1]
    index += 1
  end
  return numbers[input - 1]
end

p fibonacci_numbers(1)
p fibonacci_numbers(2)
p fibonacci_numbers(3)
p fibonacci_numbers(6)
p fibonacci_numbers(11)
