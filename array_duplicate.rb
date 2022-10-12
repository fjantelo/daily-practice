# A given array has one pair of duplicate values. Return the first duplicate value.

# NOTE: You must accomplish this in O(n) time. This is also known as linear time.

# Input: [5, 2, 9, 7, 2, 6]
# Output: 2

def array_duplicate(array)
  count = {}
  count.default = 0
  output = 0
  array.each do |number|
    count[number] += 1
    if count[number] > 1
      output = number
      break
    end
  end
  return output
end

p array_duplicate([5, 2, 9, 7, 2, 6])
