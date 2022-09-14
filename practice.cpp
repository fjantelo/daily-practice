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

int main()
{
  cout << multiplesOf3Or5(10);
  return 0;
}