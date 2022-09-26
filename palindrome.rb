require "./reverse_string.rb"
# Given a string, write a function that returns true if it is a palindrome, and false if it is not. (A palindrome is a word that reads the same both forward and backward.)

# Input: “racecar”
# Output: true

# Input: “baloney”
# Output: false

def palindrome(input)
  if input == reverse_string(input)
    return true
  else
    return false
  end
end

p palindrome("racecar")
p palindrome("baloney")
