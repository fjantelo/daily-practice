// Given an array of numbers, write a function that returns a new array whose values are the original array’s value doubled.

// Input: [4, 2, 5, 99, -4]
// Output: [8, 4, 10, 198, -8]

#include <iostream>
#include <vector>
using namespace std;

int main()
{
  int input[5] = {4, 2, 5, 99, -4};
  int length = sizeof(input) / sizeof(input[0]);
  vector<int> output;
  for (int i = 0; i < length; i++)
  {
    output.push_back(input[i] * 2);
  }
  for (int i = 0; i < length; i++)
  {
    cout << output[i] << endl;
  }
  return 0;
}