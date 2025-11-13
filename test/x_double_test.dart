import 'package:extensionx/extensionx.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('xDouble-Nullable', () {
    test('xIsNull', () {
      double? value;
      expect(value.xIsNull, isTrue);

      double? value1 = 3.14;
      expect(value1.xIsNull, isFalse);
    });

    test('xIsNullOrZero', () {
      double? value;
      expect(value.xIsNullOrZero, isTrue);

      double? value1 = 0;
      expect(value1.xIsNullOrZero, isTrue);

      double? value2 = 2.5;
      expect(value2.xIsNullOrZero, isFalse);
    });
  });

  group('xDouble', () {
    test('xRoundToDecimals', () {
      expect(3.6.xRoundToDecimals(0), 4);
      expect(3.4.xRoundToDecimals(0), 3);

      expect(3.14159.xRoundToDecimals(1), 3.1);
      expect(3.16.xRoundToDecimals(1), 3.2);

      expect(3.14159.xRoundToDecimals(2), 3.14);
      expect(3.105.xRoundToDecimals(2), 3.11);
      expect(3.146.xRoundToDecimals(2), 3.15);

      expect((-3.14159).xRoundToDecimals(2), -3.14);
      expect((-3.146).xRoundToDecimals(2), -3.15);

      expect(0.0.xRoundToDecimals(2), 0.0);
    });
  });
}
