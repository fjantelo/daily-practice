# Given a string of words, write a function that returns a new string that contains the words in reverse order.

# Input: “popcorn is so cool isn’t it yeah i thought so”
# Output: “so thought i yeah it isn’t cool so is popcorn”

def reverse_words(string)
  array = string.split(" ")
  index = array.length - 1
  output = ""
  while index >= 0
    output = output + array[index]
    if index != 0
      output = output + " "
    end
    index -= 1
  end
  return output
end

p reverse_words("popcorn is so cool isn’t it yeah i thought so")
