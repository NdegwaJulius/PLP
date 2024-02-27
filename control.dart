import 'dart:io';

void main() {
  // Prompting the user for input
  stdout.write("Enter a number: ");
  String input = stdin.readLineSync()!;
  
  // Converting the input to an integer
  try {
    int number = int.parse(input);

    // Checking the conditions and printing the appropriate message
    if (number > 10) {
      print("Your number is greater than 10");
    } else if (number < 10) {
      print("Your number is less than 10");
    } else {
      print("Your number is equal to 10");
    }
  } catch (e) {
    print("Invalid input. Please enter a valid number.");
  }
}
