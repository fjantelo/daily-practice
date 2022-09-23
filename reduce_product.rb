# Write a function that accepts an array of numbers and returns the product of all the numbers.

# Input: [1, 2, 3, 4]
# Output: 24

# Explanation: (1 x 2 x 3 x 4) = 24

def reduce_product(array)
  product = 1
  array.each do |number|
    product = product * number
  end
  return product
end

p reduce_product([1, 2, 3, 4])
