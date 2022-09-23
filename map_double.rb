# Given an array of numbers, write a function that returns a new array whose values are the original array’s value doubled.

# Input: [4, 2, 5, 99, -4]
# Output: [8, 4, 10, 198, -8]

def map_double(array)
  array.map! { |number| number * 2 }
end

p map_double([4, 2, 5, 99, -4])
