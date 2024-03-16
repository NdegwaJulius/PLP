// 1. Function to calculate sum of two numbers
int sum(int a, int b) {
  return a + b;
}

// 2. Program to print numbers from 1 to 10 using a for loop
void printNumbers() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

// 3. Program using switch statement to check different string values
void checkString(String value) {
  switch (value) {
    case 'hello':
      print('Hello there!');
      break;
    case 'dart':
      print('Dart is awesome!');
      break;
    default:
      print('Unknown string');
  }
}

// 4. Program using while loop to print numbers from 20 to 10
void printDescendingNumbers() {
  int i = 20;
  while (i >= 10) {
    print(i);
    i--;
  }
}

// 5. Program using if-else statement to check if a number is even or odd
void checkEvenOdd(int number) {
  if (number % 2 == 0) {
    print('$number is even');
  } else {
    print('$number is odd');
  }
}

// 6. Program to find the largest number in a list
int findLargest(List<int> numbers) {
  int largest = numbers[0];
  for (int number in numbers) {
    if (number > largest) {
      largest = number;
    }
  }
  return largest;
}

// 7. Program using try-catch block to catch an exception
void handleException() {
  try {
    // Code that may throw an exception
    throw Exception('An error occurred!');
  } catch (e) {
    // Catching the exception and printing error message
    print('Error: ${e.toString()}');
  }
}
void main() {
  // Test the functions
  print('Sum of 5 and 10: ${sum(5, 10)}');

  print('Numbers from 1 to 10:');
  printNumbers();

  print('Checking strings:');
  checkString('hello');
  checkString('dart');
  checkString('world');

  print('Descending numbers from 20 to 10:');
  printDescendingNumbers();

  print('Checking even or odd:');
  checkEvenOdd(7);
  checkEvenOdd(12);

  print('Largest number in the list: ${findLargest([3, 7, 10, 5, 20])}');

  print('Handling exception:');
  handleException();
}

