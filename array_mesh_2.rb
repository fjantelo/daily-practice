# Given ONE array of strings, return a new array that contains every combination of each string with every other string in the array.

# Input: ["a", "b", "c", "d"]
# Output: ["ab", "ac", "ad", "ba", "bc", "bd", "ca", "cb", "cd", "da", "db", "dc"]

def array_mesh2(array)
  index1 = 0
  output = []
  while index1 < array.length
    index2 = 0
    while index2 < array.length
      if index1 != index2
        output << array[index1] + array[index2]
      end
      index2 += 1
    end
    index1 += 1
  end
  return output
end

p array_mesh2(["a", "b", "c", "d"])
