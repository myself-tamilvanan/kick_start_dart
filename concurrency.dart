import 'dart:isolate';

int slowFib(int n) => n <= 1 ? 1 : slowFib(n - 1) + slowFib(n - 2);

// Compute without blocking current isolate.
Future<int> fib40() async {
  var result = await Isolate.run(() => slowFib(40));
  print('Fib(40) = $result');
  return result;
}

Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  await for (final value in stream) {
    sum += value;
  }
  return sum;
}

Stream<int> countStream(int to) async* {
  for (int i = 1; i <= to; i++) {
    yield i;
  }
}

void getApi() async {
  try {} on Exception catch (err) {
    print("API Exception >>>>>>>>>>: \n $err");
  }
}

void main() async {
  print("BEFORE >>>>>>>>>>>");
  fib40();
  print("AFTER >>>>>>>>>>>");

  var stream = countStream(10);
  var sum = await sumStream(stream);
  print(sum); // 55
}
