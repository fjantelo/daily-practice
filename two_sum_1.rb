# Given an array of numbers, return a new array containing just two numbers (from the original array) that add up to the number 10. If there are no two numbers that add up to 10, return false.

# Specifically use nested loops to solve this exercise even though there are other approaches as well.

# Input: [2, 5, 3, 1, 0, 7, 11]
# Output: [3, 7]

# Input: [1, 2, 3, 4, 5]
# Output: false (While 1, 2, 3, and 4 altogether add up to 10, we're seeking just one pair of numbers.)

def two_sum(array)
  index1 = 0
  output = []
  while index1 < array.length
    index2 = 0
    while index2 < array.length
      if index1 != index2 && array[index1] + array[index2] == 10
        output << array[index1]
        output << array[index2]
      end
      if output.length == 2
        break
      end
      index2 += 1
    end
    index1 += 1
  end
  if output.length == 0
    output = false
  end
  return output
end

p two_sum([2, 5, 3, 1, 0, 7, 11])
p two_sum([1, 2, 3, 4, 5])
