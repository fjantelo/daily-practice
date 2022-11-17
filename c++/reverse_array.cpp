// Given an array, write a function that returns an array that contains the original array’s values in reverse.

// Input: [1, 2, 3, 4, 5]
// Output: [5, 4, 3, 2, 1]

#include <iostream>
using namespace std;

int main()
{
  int input[5] = {1, 2, 3, 4, 5};
  int length = sizeof(input) / sizeof(input[0]);
  int output[length];
  for (int i = length - 1; i >= 0; i--)
  {
    output[i] = input[length - i - 1];
  }
  for (int i = 0; i < length; i++)
  {
    cout << output[i] << endl;
  }
  return 0;
}