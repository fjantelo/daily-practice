// Write a function that accepts an array of numbers and returns the product of all the numbers.

// Input : [1, 2, 3, 4]
// Output : 24
// Explanation : (1 x 2 x 3 x 4) = 24

#include <iostream>
using namespace std;

int main()
{
  int input[4] = {1, 2, 3, 4};
  int length = sizeof(input) / sizeof(input[0]);
  int product = 1;
  for (int i = 0; i < length; i++)
  {
    product *= input[i];
  }
  cout << product << endl;
  return 0;
}