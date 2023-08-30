import '../index.dart';

class Student {
  String name;
  int code;

  // The constructor
  Student(this.name, this.code) {
    // to do something
  }

  // Method to standardize the constructor
  Student.unlaunched(String name) : this(name, 0);

  // Method for describe object
  void describe() {
    print("\nStudent: $name");
    print("Code Student: $code");
  }
}

class Course extends Student {
  double notes;

  Course(super.name, super.code, this.notes);
}

void main() {
  // Primitive Types
  var myName = "Carlos";
  var myAge = 22;

  print("Hy, my name is $myName, and I'm $myAge years old \n");

  // Lists, Objects (Complex Types)
  var myList = ['Notebook', 'Keyboard', 'Mouse', 'Monitor'];
  print("My setup: ${myList[0]} and ${myList[3]} \n");

  var myObject = {
    'job': 'Software Engineer',
    'business': 'Freelancer',
    'salary': 1200.45
  };
  print("More infos about me: $myObject \n");

  // Control Flow (conditional)
  if (myAge >= 18) {
    print("You are of Legal Age! \n");
  } else {
    print("You are not of Legal Age! \n");
  }

  // Control Flow (loop)
  for (final object in myList) {
    print(object);
  }

  print("\n Next Repetition Loop \n");

  int count = 0;

  while (count <= 10) {
    print(count++);
  }

  // Functions type 'String' and 'int'
  int returnSum(int n1, int n2) {
    return n1 + n2;
  }

  print("The result is ${returnSum(5, 7)}");

  String returnPhrase(String sample) {
    return "My word is $sample";
  }

  print(returnPhrase("Dart"));

  // Working with a Arrow Function
  myList.where((element) => element.contains('Keyboard')).forEach(print);

  // Testing functionTest()
  functionTest();

  // Testing our 'Student Class'
  var student = Student("Carlos", 201345);
  student.describe();

  // Enums - predefined set of values
  // enum PlanetList { terrestrial, gas, ice }; // It is not working ...
}
