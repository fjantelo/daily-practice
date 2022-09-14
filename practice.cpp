#include <iostream>
using namespace std;

int multiplesOf3Or5(int number)
{
  int solution = 0;
  for (int i = 0; i < number; i++)
  {
    if (i % 3 == 0 || i % 5 == 0)
    {
      solution = solution + i;
    }
  }
  return solution;
}

string reverseString(string str)
{
  string solution = "";
  for (int i = (str.length() - 1); i >= 0; i--)
  {
    solution = solution + str[i];
  }
  return solution;
}

int main()
{
  cout << reverseString("hello");
  return 0;
}