# Given two arrays, determine whether one is a subset of the other. It is considered a subset if all the values in one array are contained within the other.

# NOTE: You must accomplish this in O(n) time. This is also known as linear time.

# Input: [1, 2, 3, 4, 5, 6], [6, 3, 2]
# Output: true

# Input: [1, 2, 3, 4, 5, 6], [6, 3, 7]
# Output: false

def array_subset(array1, array2)
  if array1.length > array2.length
    large_array = array1
    small_array = array2
  else
    large_array = array2
    small_array = array1
  end
  count = {}
  large_array.each do |number|
    count[number] = true
  end
  output = true
  small_array.each do |number|
    if count[number] != true
      output = false
      break
    end
  end
  return output
end

p array_subset([1, 2, 3, 4, 5, 6], [6, 3, 2])
p array_subset([1, 2, 3, 4, 5, 6], [6, 3, 7])
