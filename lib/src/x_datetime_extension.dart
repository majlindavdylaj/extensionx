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
}
