import 'package:flutter_test/flutter_test.dart';
import 'package:factorial/main.dart';

void main() {
  test('factorial_test', () {
    int value;

    for (int i = 0; i <= 	170; i++)
    {
      final res = find_factorial(i);
      value = 1;
      for (int j = 2; j<=i; j++)
      {
        value *= j;
      }
      expect(res, value);
    }
  });
}