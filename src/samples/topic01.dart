void main() {
  // Primitive Types
  var myName = "Carlos";
  var myAge = 22;

  print("Hy, my name is $myName, and I'm $myAge years old \n");

  // Lists, Objects (Complex Types)
  var myList = ['Notebook', 'Keyboard', 'Mouse', 'Monitor'];
  print(
      "My setup: ${myList[0]}, ${myList[1]}, ${myList[2]} and ${myList[3]} \n");

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
}
