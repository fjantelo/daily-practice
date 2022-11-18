// Write a function that returns the reverse of a given string.

// Input: “abcde”
// Output: “edcba”

#include <iostream>
#include <string>
using namespace std;

int main()
{
  string input = "abcde";
  string output;
  for (int i = 0; i < input.length(); i++)
  {
    output = output + input[input.length() - 1 - i];
  }
  cout << output << endl;
  return 0;
}