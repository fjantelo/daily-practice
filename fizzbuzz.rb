# Write a function that prints out every number from 1 to N, with the following exceptions:

# If the number is divisible by 3, print out "FIZZ".
# If the number is divisible by 5, print out "BUZZ".
# If the number is divisible by both 3 and 5, print out "FIZZBUZZ".

def fizzbuzz(number)
  index = 1
  number.times do
    if index % 5 == 0 && index % 3 == 0
      puts "FIZZBUZZ"
    elsif index % 3 == 0
      puts "FIZZ"
    elsif index % 5 == 0
      puts "BUZZ"
    else
      puts index
    end
    index += 1
  end
end

fizzbuzz(30)
