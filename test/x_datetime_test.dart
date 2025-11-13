import 'package:extensionx/extensionx.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('xDateTime-Nullable', () {
    test('xIsNull', () {
      DateTime? date;
      expect(date.xIsNull, isTrue);

      DateTime? date1 = DateTime.now();
      expect(date1.xIsNull, isFalse);
    });
  });

  group('xDateTime', () {
    test('xIsBetween', () {
      final start = DateTime(2024, 1, 1);
      final end = DateTime(2024, 1, 10);
      expect(start.xIsBetween(start, end), isTrue);
      expect(end.xIsBetween(start, end), isTrue);
      expect(start.xIsBetween(start, end, inclusive: false), isFalse);
      expect(end.xIsBetween(start, end, inclusive: false), isFalse);

      final date = DateTime(2024, 1, 5);
      expect(date.xIsBetween(start, end), isTrue);

      final date1 = DateTime(2023, 12, 31);
      expect(date1.xIsBetween(start, end), isFalse);

      final date2 = DateTime(2024, 1, 11);
      expect(date2.xIsBetween(start, end), isFalse);
    });
  });
}
