class Student {
  String name;
  int age;
  int gradeLevel;

  Student(this.name, this.age, this.gradeLevel);

  void printStudentInfo() {
    print("Student Information: Name - $name, Age - $age, Grade Level - $gradeLevel");
  }
}

class Teacher {
  String name;
  int age;
  String subject;

  Teacher(this.name, this.age, this.subject);

  void printTeacherInfo() {
    print("Teacher Information: Name - $name, Age - $age, Subject - $subject");
  }
}

class School {
  void createAndPrintInformation() {
    // Create instances of Student and Teacher
    var student = Student("John Doe", 15, 9);
    var teacher = Teacher("Mrs. Smith", 35, "Mathematics");

    // Print information using the methods
    student.printStudentInfo();
    teacher.printTeacherInfo();
  }
}

void main() {
  // Create an instance of the School class
  var school = School();

  // Call the method to create and print student and teacher information
  school.createAndPrintInformation();
}
