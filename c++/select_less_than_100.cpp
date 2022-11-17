// Given an array of numbers, write a function that returns a new array that contains all numbers from the original array that are less than 100.

// Input: [99, 101, 88, 4, 2000, 50]
// Output: [99, 88, 4, 50]

#include <iostream>
#include <vector>
using namespace std;

int main()
{
  int input[6] = {99, 101, 88, 4, 2000, 50};
  int length = sizeof(input) / sizeof(input[0]);
  vector<int> output;
  for (int i = 0; i < length; i++)
  {
    if (input[i] < 100)
    {
      output.push_back(input[i]);
    }
  }
  for (int i = 0; i < output.size(); i++)
  {
    cout << output[i] << endl;
  }
  return 0;
}