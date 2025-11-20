/// Extension for nullable DateTime
extension XDatetimeNullableExtension on DateTime? {
  /// Returns true if the DateTime is null
  bool get xIsNull => this == null;
}

/// Extension for non-nullable DateTime
extension XDatetimeExtension on DateTime {
  /// Checks if the DateTime is between [start] and [end].
  /// If [inclusive] is true, start and end are included.
  bool xIsBetween(DateTime start, DateTime end, {bool inclusive = true}) {
    if (inclusive) {
      return (isAfter(start) || isAtSameMomentAs(start)) &&
          (isBefore(end) || isAtSameMomentAs(end));
    } else {
      return isAfter(start) && isBefore(end);
    }
  }

  /// Checks if this DateTime is on the same day as [other]
  bool xIsSameDay(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  /// Returns true if this DateTime is today
  bool get xIsToday {
    final now = DateTime.now();
    return xIsSameDay(now);
  }

  /// Returns true if this DateTime is yesterday
  bool get xIsYesterday {
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    return xIsSameDay(yesterday);
  }
}
