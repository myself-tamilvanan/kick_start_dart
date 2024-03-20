void main() {
  /* Without Identifier */
  String name = "Hello world";
  name =
      "Am 'Type mentioned' kind of variable. You can change me 'N' number of time";
  print("Type mentioned variable is $name");

  /* With 'var' Identifier */
  var gender = "Male";
  gender = "Female";
  print("var initialized variable is $gender");

  /* Initialize late variable */
  late String lateVar;
  lateVar = "Test";
  print("late initialized variable is $lateVar");

  /* Initialize immutable variable */
  const String address = "Test";
  print("const initialized variable is $address");

  /* Initialize final keyword */
  final String description = "Description";
  print("final initialized variable is $description");

  dynamic dynamicVar = "Test";
  print("dynamic Variable: $dynamicVar");
  dynamicVar = 123;
  print("dynamic Variable: $dynamicVar");
  dynamicVar = false;
  print("dynamic Variable: $dynamicVar");

  Object objVar = "test";
  objVar = 123;
  print(objVar);

  String firstName;
  firstName = "";
  print(firstName);
}
