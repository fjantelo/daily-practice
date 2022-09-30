# Find the largest product of any two numbers within a given array.

# Input: [5, -2, 1, -9, -7, 2, 6]
# Output: 63 (-9 * -7)

def largest_product(array)
  index1 = 0
  products = []
  while index1 < array.length
    index2 = 0
    while index2 < array.length
      if index1 != index2
        products << array[index1] * array[index2]
      end
      index2 += 1
    end
    index1 += 1
  end
  return products.max
end

p largest_product([5, -2, 1, -9, -7, 2, 6])
