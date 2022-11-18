// Given a string, write a function that returns a copy of the original string that has every other character capitalized. (Capitalization should begin with the second character.)

// Input: “hello, how are your porcupines today?”
// Output: “hElLo, HoW ArE YoUr pOrCuPiNeS ToDaY?”

#include <iostream>
#include <string>
using namespace std;

string capitals(string input);

int main()
{
  cout << capitals("hello, how are your porcupines today?") << endl;
  return 0;
}

string capitals(string input)
{
  char current_letter;
  string output;
  for (int i = 0; i < input.length(); i++)
  {
    if (i % 2 == 0)
    {
      current_letter = tolower(input[i]);
    }
    else
    {
      current_letter = toupper(input[i]);
    }
    output = output + current_letter;
  }
  return output;
}