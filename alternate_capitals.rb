# Given a string, write a function that returns a copy of the original string that has every other character capitalized. (Capitalization should begin with the second character.)

#   Input: “hello, how are your porcupines today?”
#   Output: “hElLo, HoW ArE YoUr pOrCuPiNeS ToDaY?”

def alternate_capitals(string)
  output = string.downcase
  index = 1
  while index < output.length
    output[index] = output[index].upcase
    index += 2
  end
  return output
end

p alternate_capitals("hello, how are your porcupines today?")
