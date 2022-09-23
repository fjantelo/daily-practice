# Write a function that returns the reverse of a given string.

# Input: “abcde”
# Output: “edcba”

def reverse_string(string)
  index = string.length - 1
  output = ""
  while index >= 0
    output += string[index]
    index -= 1
  end
  return output
end

p reverse_string("abcde")
