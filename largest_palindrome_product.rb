# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def largest_palindrome
  palindromes = []
  (100..999).each do |number1|
    (100..999).each do |number2|
      product = number1 * number2
      string = product.to_s
      if string == string.reverse
        palindromes << product
      end
    end
  end
  return palindromes.max
end

p largest_palindrome
