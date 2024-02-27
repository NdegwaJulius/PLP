import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  try {
    int number = int.parse(stdin.readLineSync()!);

    print(number > 10 ? "Your number is greater than 10"
        : number < 10 ? "Your number is less than 10"
        : "Your number is equal to 10");
  } catch (e) {
    print("Invalid input. Please enter a valid number.");
  }
}
