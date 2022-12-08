// Given ONE array of strings, return a new array that contains every combination of each string with every other string in the array.

// Input: ["a", "b", "c", "d"]
// Output: ["ab", "ac", "ad", "ba", "bc", "bd", "ca", "cb", "cd", "da", "db", "dc"]

#include <iostream>
#include <vector>
#include <string>
using namespace std;

int main()
{
  char input[4] = {'a', 'b', 'c', 'd'};
  int length = sizeof(input) / sizeof(input[0]);
  string letters;
  vector<string> output;
  for (int i = 0; i < length; i++)
  {
    for (int j = 0; j < length; j++)
    {
      if (i != j)
      {
        letters = input[i] + input[j];
        output.push_back(letters);
      }
    }
  }
  for (int i = 0; i < output.size(); i++)
  {
    cout << output[i] << endl;
  }
  return 0;
}