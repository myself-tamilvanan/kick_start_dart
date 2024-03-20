void main() {
  var x = 1;
  print(x);

  var hex = 0xDEADBEEF;
  print(hex);

  var y = 1.1;
  print(y);

  var exponents = 1.42e5;
  print(exponents);

  num z = 1; // x can have both int and double values
  z += 2.5;
  print(z);

  // String -> int
  var one = int.parse('1');
  assert(one == 1);

// String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

// int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

// double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');

  var s = 'string interpolation';

  assert('Dart has $s, which is very handy.' ==
      'Dart has string interpolation, '
          'which is very handy.');
  print(s);

  assert('That deserves all caps. '
          '${s.toUpperCase()} is very handy!' ==
      'That deserves all caps. '
          'STRING INTERPOLATION is very handy!');
  print(s);

  /* LISTS */
  List<Object> list = [
    1,
    2,
    3,
    "Test",
    true,
    [
      "A",
      1,
      5,
      false,
      [342, 3423, 42, 34]
    ]
  ];

  list = ["a"];

  print(list);

  // Creating lists
  List basket1 = ['Mango', 'Apple'];
  List basket2 = ['Orange', 'Avocado', 'Grape'];
  List basket3 = ['Lemon'];

  // converting the lists to an iterable
  var newBasketIterable = [basket1, basket2, basket3].expand((x) => x);
  // combining the lists
  var newBasket = newBasketIterable.toList();

  print("Combined List:  $newBasket");

  final List<num> numList = [1, 234, 324, 4, 56, 767, 8, 856, 234];
  numList.add(6);
  numList.any((element) => element >= 4);
  // numList.clear();
  print(numList);
  print(numList.elementAt(2));

  final objList = [
    {123: "123"},
    {12: "asdasdasd", "qwe": 123}
  ];
  print(objList);

  /* Sets */
  final map = {"One", "Two", "Three", "One", "Two", "Three"};
  map.add("Four");
  map.add("Five");
  print(map);

  /* Maps */
  final nobleGases = <int, String>{};
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  nobleGases.addAll({10: "Test"});
  print(nobleGases);

  final constantMap = const <int, String>{
    2222: 'helium',
    1022: 'neon',
    1822: 'argon',
  };
  // constantMap.addAll({5: "Test"});
  print(constantMap);

  /* Runes and grapheme clusters */
  var hi = 'Hi 🇩🇰';
  print(hi);
  print('The end of the string: ${hi.substring(hi.length - 1)}');
  // print('The last character: ${hi.characters.last}');

  final record =
      ('first', a: 2, b: true, 'last', "Test", 123, qweqwe: "sdasdasd");

  print(record.$1);
  print(record.a);
  print(record.b);
  print(record.$4);

  (int x, int y, int z) point = (1, 2, 3);
  (int r, int g, int b) color = (1, 2, 3);

  print("Compare record: ${point == color}");

  ({int x, int y, int z}) pointObj = (x: 1, y: 2, z: 3);
  ({int r, int g, int b}) colorObj = (r: 1, g: 2, b: 3);

  print(pointObj == colorObj);

  // Returns multiple values in a record:
  (String name, int age) userInfo(Map<String, dynamic> json) {
    return (json['name'] as String, json['age'] as int);
  }

  final json = <String, dynamic>{
    'name': 'Dash',
    'age': 10,
    'color': 'blue',
  };

// Destructures using a record pattern with positional fields:
  final (name, age) = userInfo(json);

  print("$name, $age");
}
