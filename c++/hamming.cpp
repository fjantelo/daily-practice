// Given two strings of equal length, write a function that returns the number of characters that are different between the two strings.

// Input: "ABCDEFG", "ABCXEOG"
// Output: 2

// Explanation: While the A, B, C, E, and G are in the same place for both strings, they have different characters in the other spaces. Since there are 2 such spaces that are different (the D and F in the first string), we return 2.

// Input: "ABCDEFG", "ABCDEFG",
// Output: 0

#include <iostream>
#include <string>
using namespace std;

int hamming(string string1, string string2);

int main()
{
  cout << hamming("ABCDEFG", "ABCXEOG") << endl;
  cout << hamming("ABCDEFG", "ABCDEFG") << endl;
  return 0;
}

int hamming(string string1, string string2)
{
  int output = 0;
  for (int i = 0; i < string1.length(); i++)
  {
    if (string1[i] != string2[i])
    {
      output++;
    }
  }
  return output;
}