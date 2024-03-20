class Paint {
  String? color;
  int? strokeCap;
  int? strokeWidth;
}

class Todo {
  final String? who;
  final String what;

  const Todo(this.who, this.what);
}

@Todo(null, 'Implement this function')
void main() {
  print("Hello world");

  dynamic name = "";
  /* Cascade operator */
  dynamic paint = name != null ? Paint() : null
    ?..color = ""
    ..strokeCap = 12
    ..strokeWidth = 21;

  print(paint);
}
