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

    test('xIsSameDay', () {
      final date1 = DateTime(2024, 5, 10);
      final date2 = DateTime(2024, 5, 10);
      expect(date1.xIsSameDay(date2), isTrue);

      final date3 = DateTime(2024, 5, 10);
      final date4 = DateTime(2024, 5, 11);
      expect(date3.xIsSameDay(date4), isFalse);

      final date5 = DateTime(2024, 5, 10);
      final date6 = DateTime(2024, 6, 10);
      expect(date5.xIsSameDay(date6), isFalse);

      final date7 = DateTime(2024, 5, 10);
      final date8 = DateTime(2025, 5, 10);
      expect(date7.xIsSameDay(date8), isFalse);

      final date9 = DateTime(2024, 5, 10, 8, 30);
      final date10 = DateTime(2024, 5, 10, 23, 45);
      expect(date9.xIsSameDay(date10), isTrue);
    });

    test('xIsToday', () {
      final today = DateTime.now();
      expect(today.xIsToday, isTrue);

      final yesterday = DateTime.now().subtract(const Duration(days: 1));
      expect(yesterday.xIsToday, isFalse);

      final tomorrow = DateTime.now().add(const Duration(days: 1));
      expect(tomorrow.xIsToday, isFalse);

      final now = DateTime.now();
      final differentTimeToday = DateTime(
        now.year,
        now.month,
        now.day,
        now.hour + 5,
        now.minute + 10,
      );
      expect(differentTimeToday.xIsToday, isTrue);
    });

    test('xIsYesterday', () {
      final yesterday = DateTime.now().subtract(const Duration(days: 1));
      expect(yesterday.xIsYesterday, isTrue);

      final today = DateTime.now();
      expect(today.xIsYesterday, isFalse);

      final twoDaysAgo = DateTime.now().subtract(const Duration(days: 2));
      expect(twoDaysAgo.xIsYesterday, isFalse);

      final now = DateTime.now();
      final differentTimeYesterday = DateTime(
        now.year,
        now.month,
        now.day - 1,
        now.hour + 5,
        now.minute + 10,
      );
      expect(differentTimeYesterday.xIsYesterday, isTrue);
    });
  });
}
