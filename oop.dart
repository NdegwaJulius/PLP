// Define an interface
abstract class Printable {
  void printInfo();
}

// Base class representing a government department
class GovernmentDepartment implements Printable {
  String name;

  GovernmentDepartment(this.name);

  void performFunction() {
    print("Overseeing general government functions");
  }

  // Implementing the interface method
  @override
  void printInfo() {
    print("Department: $name");
  }
}

// Subclass representing a specific government department
class EducationDepartment extends GovernmentDepartment {
  String focusArea;

  EducationDepartment(String name, this.focusArea) : super(name);

  // Overriding the inherited method
  @override
  void performFunction() {
    print("Overseeing education-related matters");
  }

  // Implementing the interface method
  @override
  void printInfo() {
    print("Department: $name, Focus Area: $focusArea");
  }
}

void main() {
  // Create instances of government departments
  var financeDepartment = GovernmentDepartment("Ministry of Finance");
  var educationDepartment = EducationDepartment("Ministry of Education", "Primary and Secondary Education");
  var healthDepartment = GovernmentDepartment("Ministry of Health");
  var interiorDepartment = GovernmentDepartment("Ministry of Interior");

  // Demonstrate the use of overridden and interface methods for individual departments
  print("\nDemonstrating individual departments:");
  financeDepartment.performFunction();
  if (financeDepartment is Printable) {
    financeDepartment.printInfo();
  }
  educationDepartment.performFunction();
  if (educationDepartment is Printable) {
    educationDepartment.printInfo();
  }
  healthDepartment.performFunction();
  if (healthDepartment is Printable) {
    healthDepartment.printInfo();
  }
  interiorDepartment.performFunction();
  if (interiorDepartment is Printable) {
    interiorDepartment.printInfo();
  }

  // Method demonstrating the use of a loop for multiple government departments
  print("\nUsing a loop to print info for multiple government departments:");
  var departmentsList = [
    financeDepartment,
    educationDepartment,
    healthDepartment,
    interiorDepartment,
  ];

  for (var department in departmentsList) {
    department.performFunction();
    if (department is Printable) {
      department.printInfo();
    }
  }
}
