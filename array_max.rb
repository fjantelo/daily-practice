# Write a function that returns the greatest value from an array of numbers.

# Input: [5, 17, -4, 20, 12]
# Output: 20

def array_max(array)
  max = array[0]
  array.each do |number|
    max = number if number > max
  end
  return max
end

p array_max([5, 17, -4, 20, 12])
