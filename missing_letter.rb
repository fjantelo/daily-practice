# A given string contains all the letters from the alphabet except for one. Return the missing letter.

# NOTE: You must accomplish this in O(n) time. This is also known as linear time.

# Input: “The quick brown box jumps over a lazy dog”
# Output: “f”

def missing_letter(string)
  index = 0
  phrase = string.downcase
  alphabet = {
    "a" => 0,
    "b" => 0,
    "c" => 0,
    "d" => 0,
    "e" => 0,
    "f" => 0,
    "g" => 0,
    "h" => 0,
    "i" => 0,
    "j" => 0,
    "k" => 0,
    "l" => 0,
    "m" => 0,
    "n" => 0,
    "o" => 0,
    "p" => 0,
    "q" => 0,
    "r" => 0,
    "s" => 0,
    "t" => 0,
    "u" => 0,
    "v" => 0,
    "w" => 0,
    "x" => 0,
    "y" => 0,
    "z" => 0,
  }
  phrase.each_char do |letter|
    alphabet[letter] += 1 if phrase[index] != " "
    index += 1
  end
  return alphabet.key(0)
end

p missing_letter("The quick brown box jumps over a lazy dog")
