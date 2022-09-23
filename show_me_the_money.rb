# Given a string, write a function that returns true if the “$” character is contained within the string or false if it is not.

# Input: “i hate $ but i love money i know i know im crazy”
# Output: true

# Input: “abcdefghijklmnopqrstuvwxyz”
# Output: false

def show_me_the_money(string)
  index = 0
  output = false
  string.length.times do
    output = true if string[index] == "$"
    index += 1
  end
  return output
end

p show_me_the_money("i hate $ but i love money i know i know im crazy")
p show_me_the_money("abcdefghijklmnopqrstuvwxyz")
