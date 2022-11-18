// Given a string, write a function that returns true if it is a palindrome, and false if it is not. (A palindrome is a word that reads the same both forward and backward.)

// Input: “racecar”
// Output: true

// Input: “baloney”
// Output: false

#include <iostream>
#include <string>
using namespace std;

string reverse_string(string input);
bool palindrome(string input);

int main()
{
  cout << "racecar" << endl;
  cout << palindrome("racecar") << endl;
  cout << "baloney" << endl;
  cout << palindrome("baloney") << endl;
  return 0;
}

string reverse_string(string input)
{
  string output;
  for (int i = 0; i < input.length(); i++)
  {
    output = output + input[input.length() - 1 - i];
  }
  return output;
}

bool palindrome(string input)
{
  bool output = false;
  if (input == reverse_string(input))
  {
    output = true;
  }
  return output;
}