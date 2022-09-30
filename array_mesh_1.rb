# Given two arrays of strings, return a new string that contains every combination of a string from the first array concatenated with a string from the second array.

# Input: ["a", "b", "c"], ["d", "e", "f", "g"]
# Output: ["ad", "ae", "af", "ag", "bd", "be", "bf", "bg", "cd", "ce", "cf", "cg"]

def array_mesh(array1, array2)
  output = []
  array1.each do |string1|
    array2.each do |string2|
      output << string1 + string2
    end
  end
  return output
end

p array_mesh(["a", "b", "c"], ["d", "e", "f", "g"])
