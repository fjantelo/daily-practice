// Given a string, write a function that returns the first occurence of two duplicate characters in a row, and return the duplicated character.

// Input: “abcdefghhijkkloooop”
// Output: “h”

#include <iostream>
#include <string>
#include <map>
using namespace std;

char duplicate(string input);

int main()
{
  cout << duplicate("abcdefghhijkkloooop") << endl;
  return 0;
}

char duplicate(string input)
{
  char output;
  map<char, int> count;

  for (int i = 0; i < input.length(); i++)
  {
    count[input[i]]++;
    if (count[input[i]] > 1)
    {
      output = input[i];
      break;
    }
  }

  return output;
}