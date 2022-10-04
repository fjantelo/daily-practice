# Given a string, find the most commonly occurring letter.

# Input: “peter piper picked a peck of pickled peppers”
# Output: “p”

def most_frequent_letter(string)
  count = {}
  count.default = 0
  index = 0
  while index < string.length
    count[string[index]] += 1
    index += 1
  end
  max = 0
  output = ""
  count.each { |key, value|
    if value > max
      output = key
      max = value
    end
  }
  return output
end

p most_frequent_letter("peter piper picked a peck of pickled peppers")
