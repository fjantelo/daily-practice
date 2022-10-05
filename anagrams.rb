# Given two strings, return true if they are anagrams of each other, and false if they are not. An anagram is a word, phrase, or name formed by rearranging the letters of another, such as cinema, formed from iceman.

# Do not use any built-in sort methods.

# Input: “silent”, “listen”
# Output: true

# Input: “frog”, “bear”
# Output: false

def anagrams(string1, string2)
  count1 = {}
  count1.default = 0
  count2 = {}
  count2.default = 0
  index = 0
  string1.length.times do
    count1[string1[index]] += 1
    count2[string2[index]] += 1
    index += 1
  end
  if count1 == count2
    return true
  else
    return false
  end
end

p anagrams("silent", "listen")
p anagrams("frog", "bear")
