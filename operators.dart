void main() {
  dynamic name = "null";
  print(name is! String);
  assert(name is String);
  // Assign value to "Language" if 'name' is null; otherwise, 'name' stays the same
  name ??= "Language";
  print(name);

  final fName = name != null ? null : "Null";

  print(fName ?? "Prev value is NULL");
}
