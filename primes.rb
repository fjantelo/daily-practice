# Write a function that returns whether a given number is a prime number.
# First prime numbers are 2, 3, 5, 7, 11, 13, 17, 19, 23 and 29

def primes(number)
  index = 2
  output = true
  while index < number
    if number % index == 0
      output = false
      break
    end
    index += 1
  end
  return output
end

p "The following should be true"
p primes(2)
p primes(3)
p primes(5)
p primes(7)
p primes(11)
p primes(13)
p primes(17)
p primes(19)
p primes(23)
p primes(29)
p "Now the rest should be false"
p primes(4)
p primes(6)
p primes(10)
p primes(21)
