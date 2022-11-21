// Given a string of words, write a function that returns a new string that contains the words in reverse order.

// Input: “popcorn is so cool isn’t it yeah i thought so”
// Output: “so thought i yeah it isn’t cool so is popcorn”

#include <iostream>
#include <string>
#include <vector>
using namespace std;

string reverse_words(string input);

int main()
{
  cout << reverse_words("popcorn is so cool isn’t it yeah i thought so") << endl;
  return 0;
}

string reverse_words(string input)
{
  vector<string> output_words;
  string output;
  int start_point = 0;
  int end_point;

  for (int i = 0; i < input.length(); i++)
  {
    if (input[i] == ' ')
    {
      end_point = i;
      output_words.push_back(input.substr(start_point, (end_point - start_point)));
      start_point = i + 1;
    }
  }
  output_words.push_back(input.substr(start_point, (input.length() - start_point)));

  for (int i = output_words.size() - 1; i >= 0; i--)
  {
    output += output_words[i];
    if (i != 0)
    {
      output += ' ';
    }
  }

  return output;
}