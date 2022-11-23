// # A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

// # Find the largest palindrome made from the product of two 3-digit numbers.

#include <iostream>
#include <vector>
#include <string>
using namespace std;

int largest_palindrome();
string reverse_string(string input);

int main()
{
  cout << largest_palindrome() << endl;
  return 0;
}

int largest_palindrome()
{
  vector<int> numbers;
  int thousand[900];
  string current_number_string;
  for (int i = 0; i < 900; i++)
  {
    thousand[i] = i + 100;
  }
  for (int i = 0; i < 900; i++)
  {
    for (int j = 0; j < 900; j++)
    {
      // need to check here if it's a palindrome
      current_number_string = to_string(thousand[i] * thousand[j]);
      if (current_number_string == reverse_string(current_number_string))
      {
        numbers.push_back(thousand[i] * thousand[j]);
      }
    }
  }
  int maximum;
  for (int i = 0; i < numbers.size(); i++)
  {
    if (numbers[i] > maximum)
    {
      maximum = numbers[i];
    }
  }
  return maximum;
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