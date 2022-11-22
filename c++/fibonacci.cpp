// Write a function that gives the Nth number of the Fibonacci Sequence. The Fibonacci sequence begins with 0 and 1, and every number thereafter is the sum of the previous two numbers. So the sequence goes like this:

// 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, and so on until infinity...

// Input: 9
// Output: 21 (as this is the 9th number of the Fibonacci Sequence)

#include <iostream>
#include <vector>
using namespace std;

int fibonacci(int number);

int main()
{
  cout << fibonacci(9) << endl;
  return 0;
}

int fibonacci(int number)
{
  vector<int> numbers;
  numbers.push_back(0);
  numbers.push_back(1);
  for (int i = 2; i <= number; i++)
  {
    // do thing here
    numbers.push_back(numbers[i - 1] + numbers[i - 2]);
  }
  return numbers[number - 1];
}