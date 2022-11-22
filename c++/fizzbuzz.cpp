// Write a function that prints out every number from 1 to N, with the following exceptions:

// If the number is divisible by 3, print out "FIZZ".
// If the number is divisible by 5, print out "BUZZ".
// If the number is divisible by both 3 and 5, print out "FIZZBUZZ".

#include <iostream>
#include <string>
using namespace std;

void fizzbuzz(int number);

int main()
{
  fizzbuzz(30);
  return 0;
}

void fizzbuzz(int number)
{
  for (int i = 1; i <= number; i++)
  {
    if (i % 5 == 0 && i % 3 == 0)
    {
      cout << "FIZZBUZZ" << endl;
    }
    else if (i % 3 == 0)
    {
      // do things here
      cout << "FIZZ" << endl;
    }
    else if (i % 5 == 0)
    {
      cout << "BUZZ" << endl;
    }
    else
    {
      cout << i << endl;
    }
  }
}