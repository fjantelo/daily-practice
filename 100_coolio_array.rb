# Given an array of numbers, return true if the array is a "100 Coolio Array", or false if it is not.

# A "100 Coolio Array" meets the following criteria:

# Its first and last numbers add up to 100,
# Its second and second-to-last numbers add up to 100,
# Its third and third-to-last numbers add up to 100,
# and so on and so forth.

# Here are examples of 100 Coolio Arrays:

# [1, 2, 3, 97, 98, 99]
# [90, 20, 70, 100, 30, 80, 10]

def coolio_array(array)
  output = true
  index = 0
  while index < array.length / 2
    if array[index] + array[array.length - 1 - index] != 100
      output = false
      break
    end
    index += 1
  end
  return output
end

p coolio_array([1, 2, 3, 97, 98, 99])
p coolio_array([90, 20, 70, 100, 30, 80, 10])
p coolio_array([1, 2, 3, 5, 7])
