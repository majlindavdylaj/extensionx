extension XDatetimeNullableExtension on DateTime? {
  bool get xIsNull => this == null;
}

extension XDatetimeExtension on DateTime {
  bool xIsBetween(DateTime start, DateTime end, {bool inclusive = true}) {
    if (inclusive) {
      return (isAfter(start) || isAtSameMomentAs(start)) &&
          (isBefore(end) || isAtSameMomentAs(end));
    } else {
      return isAfter(start) && isBefore(end);
    }
  }

  bool xIsSameDay(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  bool get xIsToday {
    final now = DateTime.now();
    return xIsSameDay(now);
  }

  bool get xIsYesterday {
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    return xIsSameDay(yesterday);
  }
}
