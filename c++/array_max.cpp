// Write a function that returns the greatest value from an array of numbers.

// Input: [5, 17, -4, 20, 12]
// Output: 20

#include <iostream>
using namespace std;

int main()
{
  int input[5] = {5, 17, -4, 20, 12};
  int length = sizeof(input) / sizeof(input[0]);
  int maximum;
  for (int i = 0; i < length; i++)
  {
    if (input[i] > maximum)
    {
      maximum = input[i];
    }
  }
  cout << maximum << endl;
  return 0;
}