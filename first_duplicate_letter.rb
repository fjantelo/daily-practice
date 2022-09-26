# Given a string, write a function that returns the first occurence of two duplicate characters in a row, and return the duplicated character.

# Input: “abcdefghhijkkloooop”
# Output: “h”

def first_duplicate_letter(string)
  count = {}
  count.default = 0
  index = 0
  downcase_string = string.downcase
  while index < downcase_string.length
    count[downcase_string[index]] += 1
    if count[downcase_string[index]] == 2
      output = downcase_string[index]
      break
    end
    index += 1
  end
  return output
end

p first_duplicate_letter("abcdefghhijkkloooop")
