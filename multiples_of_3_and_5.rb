# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

def multiples_of_3_or_5()
  index = 1
  numbers = []
  while index < 1000
    if index % 3 == 0 || index % 5 == 0
      numbers << index
    end
    index += 1
  end
  return numbers.sum
end

p multiples_of_3_or_5
