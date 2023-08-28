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
