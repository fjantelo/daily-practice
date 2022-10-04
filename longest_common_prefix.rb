# Write a function to find the longest common prefix string amongst an array of strings.

# If there is no common prefix, return an empty string "".

# Example 1:

# Input: ["flower","flow","flight"]
# Output: "fl"
# Example 2:

# Input: ["dog","racecar","car"]
# Output: ""
# Explanation: There is no common prefix among the input strings.
# Note:

# All given inputs are in lowercase letters a-z.

def longest_common_prefix(array)
  index = 1
  common_prefix_array = []
  while index < array.length
    letters = ""
    index2 = 0
    while index2 < array[index].length
      if array[index][index2] == array[index - 1][index2]
        letters = letters + array[index][index2]
      end
      index2 += 1
    end
    common_prefix_array << letters
    index += 1
  end
  index = 1
  output = common_prefix_array[0]
  while index < common_prefix_array.length
    output = common_prefix_array[index] if common_prefix_array[index].length < output.length
    index += 1
  end
  return output
end

p longest_common_prefix(["flower", "flow", "flight"])
p longest_common_prefix(["dog", "racecar", "car"])
