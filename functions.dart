class A {
  static void bar() {} // A static method
  void baz() {} // An instance method
}

var topLevel = true;

Function lexicalClosure(int addBy) {
  return (int value) => value + addBy;
}

main() {
  const _nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  isNoble(int atomicNumber) {
    return _nobleGases[atomicNumber] != null;
  }

  voidFunction() {
    print("This is a Void Function");
  }

  voidFunction();

  arrowFunctionSingleLine() => print("This is a Arrow Function In Single Line");
  arrowFunctionSingleLine();

  _arrowFunction() {
    print("This is a Private & Returnable Function");
    return "Test";
  }

  print(_arrowFunction());

  print(isNoble(2));

  parameterFunction(String name, int age, String gender) {
    print("parameterFunction $name, $age, $gender");
  }

  parameterFunction("Tamilvanan", 12, "Male");

/* Named arguments */
  void enableFlags({bool? bold, bool? hidden}) {
    print(bold);
    print(hidden);
  }

  enableFlags(bold: null, hidden: true);
/* Anonymous functions */
  const list = ['apples', 'bananas', 'oranges'];
  list.map((item) {
    return item.toUpperCase();
  }).forEach((item) {
    print('$item: ${item.length}');
  });

  /* Lexical Closure */
  // Create a function that adds 2.
  var add2 = lexicalClosure(2);

  // Create a function that adds 4.
  var add4 = lexicalClosure(4);

  print(add2(3) == 5);
  print(add4(3) == 7);

  /* Lexical Scope */
  var insideMain = true;

  void myFunction() {
    var insideFunction = true;

    void nestedFunction() {
      var insideNestedFunction = true;

      print("topLevel: $topLevel");
      print("insideMain: $insideMain");
      print("insideFunction: $insideFunction");
      print("insideNestedFunction: $insideNestedFunction");
    }

    nestedFunction();
  }

  myFunction();

/* Testing functions for equality */
  void foo() {} // A top-level function

  Function x;

  // Comparing top-level functions.
  x = foo;
  print(foo == x);

  // Comparing static methods.
  x = A.bar;
  print(A.bar == x);

  // Comparing instance methods.
  var v = A(); // Instance #1 of A
  var w = A(); // Instance #2 of A
  var y = w;
  x = w.baz;

  // These closures refer to the same instance (#2),
  // so they're equal.
  print(y.baz == x);

  // These closures refer to different instances,
  // so they're unequal.
  print(v.baz != w.baz);
  print(y.baz == w.baz);

  /* Return Values */
  returnFunction() {}
  print(returnFunction());
}
