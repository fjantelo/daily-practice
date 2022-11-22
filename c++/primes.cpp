// Write a function that returns whether a given number is a prime number.
// First prime numbers are 2, 3, 5, 7, 11, 13, 17, 19, 23 and 29

#include <iostream>
using namespace std;

bool primes(int number);

int main()
{
  cout << "The following are prime:" << endl;
  cout << primes(2) << endl;
  cout << primes(3) << endl;
  cout << primes(5) << endl;
  cout << primes(7) << endl;
  cout << primes(11) << endl;
  cout << primes(13) << endl;
  cout << primes(17) << endl;
  cout << primes(19) << endl;
  cout << primes(23) << endl;
  cout << primes(29) << endl;
  cout << "The following are not prime:" << endl;
  cout << primes(4) << endl;
  cout << primes(6) << endl;
  cout << primes(10) << endl;
  cout << primes(21) << endl;
  return 0;
}

bool primes(int number)
{
  bool output = true;
  for (int i = 2; i < number; i++)
  {
    if (number % i == 0)
    {
      output = false;
      break;
    }
  }
  return output;
}