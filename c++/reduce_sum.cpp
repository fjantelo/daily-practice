// Write a function that returns the sum of all numbers in a given array.

// NOTE: Do not use any built-in language functions that do this automatically for you.

// Input: [1, 2, 3, 4]
// Output: 10

// Explanation: (1 + 2 + 3 + 4) = 10

#include <iostream>
#include <array>
using namespace std;

int main()
{
  int numbers[4] = {1, 2, 3, 4};
  int sum = 0;
  int length = sizeof(numbers) / sizeof(numbers[0]);
  for (int i = 0; i < length; i++)
  {
    sum = sum + numbers[i];
  }
  cout << sum << endl;

  return 0;
}