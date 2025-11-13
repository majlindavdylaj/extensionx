import 'package:extensionx/extensionx.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('xInt-Nullable', () {
    test('xIsNull', () {
      int? value;
      expect(value.xIsNull, isTrue);

      int? value1 = 5;
      expect(value1.xIsNull, isFalse);
    });

    test('xIsNullOrZero', () {
      int? value;
      expect(value.xIsNullOrZero, isTrue);

      int? value1 = 0;
      expect(value1.xIsNullOrZero, isTrue);

      int? value2 = 7;
      expect(value2.xIsNullOrZero, isFalse);

      int? value3 = -1;
      expect(value3.xIsNullOrZero, isFalse);
    });
  });

  group('xInt', () {
    test('xIsEven', () {
      expect(2.xIsEven, isTrue);
      expect(0.xIsEven, isTrue);
      expect((-4).xIsEven, isTrue);

      expect(3.xIsEven, isFalse);
      expect((-1).xIsEven, isFalse);
    });

    test('xIsOdd', () {
      expect(3.xIsOdd, isTrue);
      expect((-1).xIsOdd, isTrue);

      expect(2.xIsOdd, isFalse);
      expect(0.xIsOdd, isFalse);
      expect((-4).xIsOdd, isFalse);
    });
  });
}
