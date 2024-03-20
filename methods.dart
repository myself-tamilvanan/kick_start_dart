class Rectangle {
  double left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  // Define two calculated properties: right and bottom.
  double get right => left + width;
  set right(double value) => left = value - width;
  double get bottom => top + height;
  set bottom(double value) => top = value - height;
}

abstract class Doer {
  // Define instance variables and methods...

  void doSomething(); // Define an abstract method.
}

class EffectiveDoer extends Doer {
  @override
  void doSomething() {}
}

// A person. The implicit interface contains greet().
class Person {
  // In the interface, but visible only in this library.
  final String _name;

  // Not in the interface, since this is a constructor.
  Person(this._name);

  // In the interface.
  String greet(String who) => 'Hello, $who. I am $_name.';
}

// An implementation of the Person interface.
class Impostor implements Person {
  String get _name => '';

  String greet(String who) => 'Hi $who. Do you know who I am?';
}

String greetBob(Person person) => person.greet('Bob');

void main() {
  final rect = Rectangle(3, 4, 20, 15);
  print("rect.top = ${rect.top}");
  print("rect.left = ${rect.left}");
  print("rect.right = ${rect.right}");
  print("rect.bottom = ${rect.bottom}");
  print("rect.width = ${rect.width}");
  print("rect.height = ${rect.height}");

  rect.right = 20;
  rect.bottom = 10;

  print("rect.top = ${rect.top}");
  print("rect.left = ${rect.left}");
  print("rect.right = ${rect.right}");
  print("rect.bottom = ${rect.bottom}");
  print("rect.width = ${rect.width}");
  print("rect.height = ${rect.height}");

  print(greetBob(Person('Kathy')));
  print(greetBob(Impostor()));
}
