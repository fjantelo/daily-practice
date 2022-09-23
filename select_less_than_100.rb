# Given an array of numbers, write a function that returns a new array that contains all numbers from the original array that are less than 100.

# Input: [99, 101, 88, 4, 2000, 50]
# Output: [99, 88, 4, 50]

def select_less_than_100(array)
  output = []
  array.each do |number|
    output << number if number < 100
  end
  return output
end

p select_less_than_100([99, 101, 88, 4, 2000, 50])
