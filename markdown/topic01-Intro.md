## 1. Introduction

### Hello World

```dart
void main() {
  print("Hello User! ✌️");
}
```

### Variables Declarations

Even in type-safe Dart code, you can declare most variables without explicitly specifying their type using `var`. 

```dart
var myName = "Carlos";
var myAge = 22;

var myList = ['Notebook', 'Keyboard', 'Mouse', 'Monitor'];
var myObject = {
  'job': 'Software Engineer',
  'business': 'Freelancer',
  'salary': 1200.45
};
```

### Controle flow Statements

They are the *condition loops*, and the *repetition loops*

```dart
if (myAge >= 18) {
  print("You are of Legal Age! \n");
} else {
  print("You are not of Legal Age! \n");
}
```

```dart
for (final object in myList) {
  print(object);
}
```

```dart
int count = 0;

while (count <= 10) {
  print(count++);
}
```

### Functions

Rule: Specific the type of function developed

```dart
int returnSum(int n1, int n2) {
  return n1 + n2;
}

print("The result is ${returnSum(5, 7)}");

String returnPhrase(String sample) {
  return "My word is $sample";
}
```

We can use Arrow Functions to do something

```dart
myList.where((element) => element.contains('Keyboard')).forEach(print);
```

### Imports

```dart
import '../index.dart';

void main() {
    // The code above ...
    functionTest(); // from 'index.dart'
}
```

### Classes

The class is a representation of a real-world object, where it has its own characteristics and methods.

```dart
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
```

For use the characteristics Class:

```dart
var student = Student("Carlos", 201345);
student.describe();
```

### Enums

Enums are a way of enumerating a predefined set of values or instances in a way which ensures that there cannot be any other instances of that type.

```dart
enum PlanetType { terrestrial, gas, ice };
```

```dart
/// Enum that enumerates the different planets in our solar system
/// and some of their properties.
enum Planet {
  mercury(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  venus(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  // ···
  bool get isGiant =>
    planetType == PlanetType.gas || planetType == PlanetType.ice;
}
```

### Inheritance

Dart has single inheritance.

```dart
class Course extends Student {
  double notes;

  Course(super.name, super.code, this.notes);
}
```

### Mixins

Mixins are a way of reusing code in multiple class hierarchies.

```dart
mixin Astronaut {
  int astronauts = 3;

  void returnQuantity() {
    print("We have $astronauts on board");
  }
}
```

To add a mixin’s capabilities to a class, just extend the class with the mixin.

```dart
class AstronautCraft extends Student with Astronaut {
  // ...
  AstronautCraft(super.name, super.code);
}
```

AstronautCraft now has the astronauts field as well as the returnQuantity() method.

### Interfaces and Abstract Classes

All classes implicitly define an interface. Therefore, you can implement any class.

```dart
class MockSpaceship implements Spacecraft {
    // ...
}
```

You can create an abstract class to be extended (or implemented) by a concrete class.

```dart
abstract class Describable {
  void describe();

  void describeWithEmphasis() {
    print('===');
    describe();
    print('===');
  }
}
```

### Async

Avoid callback hell and make your code much more readable by using `async` and `await`.

```dart
const oneSecond = Duration(seconds: 1);
// ···
Future<void> printWithDelay(String message) async {
  await Future.delayed(oneSecond);
  print(message);
}
```

You can also use `async*`, which gives you a nice, readable way to build streams.

```dart
Stream<String> report(Spacecraft craft, Iterable<String> objects) async* {
  for (final object in objects) {
    await Future.delayed(oneSecond);
    yield '${craft.name} flies by $object';
  }
}
```

## Exceptions

To raise an exception, use `throw`:

```dart
if (astronauts == 0) {
	throw StateError('0 Astronauts');
}
```

To catch an exception, use a `try` statement with `on` or `catch`

```dart
Future<void> describeFlybyObjects(List<String> flybyObjects) async {
  try {
    for (final object in flybyObjects) {
      var description = await File('$object.txt').readAsString();
      print(description);
    }
  } on IOException catch (e) {
    print('Could not describe object: $e');
  } finally {
    flybyObjects.clear();
  }
}
```
