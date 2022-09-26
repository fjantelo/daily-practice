# Given two strings of equal length, write a function that returns the number of characters that are different between the two strings.

# Input: "ABCDEFG", "ABCXEOG"
# Output: 2

# Explanation: While the A, B, C, E, and G are in the same place for both strings, they have different characters in the other spaces. Since there are 2 such spaces that are different (the D and F in the first string), we return 2.

# Input: "ABCDEFG", "ABCDEFG",
# Output: 0

def hamming(word1, word2)
  count = 0
  index = 0
  while index < word1.length
    if word1[index] != word2[index]
      count += 1
    end
    index += 1
  end
  return count
end

p hamming("ABCDEFG", "ABCXEOG")
p hamming("ABCDEFG", "ABCDEFG")
