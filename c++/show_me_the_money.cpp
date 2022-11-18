// Given a string, write a function that returns true if the “$” character is contained within the string or false if it is not.

// Input: “i hate $ but i love money i know i know im crazy”
// Output: true

// Input: “abcdefghijklmnopqrstuvwxyz”
// Output: false

#include <iostream>
#include <string>
using namespace std;

bool money(string input);

int main()
{
  string input = "i hate $ but i love money i know i know im crazy";
  cout << money(input) << endl;
  input = "abcdefghijklmnopqrstuvwxyz";
  cout << money(input) << endl;
  return 0;
}

bool money(string input)
{
  bool output = false;
  for (int i = 0; i < input.length(); i++)
  {
    if (tolower(input[i]) == '$')
    {
      output = true;
      break;
    }
  }
  return output;
}