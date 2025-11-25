/// Extension for nullable int
extension XIntNullableExtension on int? {
  /// Returns true if the int is null
  bool get xIsNull => this == null;

  /// Returns true if the int is null or zero
  bool get xIsNullOrZero => this == null || this == 0;
}

/// Extension for non-nullable int
extension XIntExtension on int {
  /// Returns true if the int is even
  bool get xIsEven => isEven;

  /// Returns true if the int is odd
  bool get xIsOdd => isOdd;

  /// Converts this int to microseconds Duration
  Duration get xMicroseconds => Duration(microseconds: this);

  /// Converts this int to milliseconds Duration
  Duration get xMilliseconds => Duration(milliseconds: this);

  /// Converts this int to seconds Duration
  Duration get xSeconds => Duration(seconds: this);

  /// Converts this int to minutes Duration
  Duration get xMinutes => Duration(minutes: this);

  /// Converts this int to hours Duration
  Duration get xHours => Duration(hours: this);

  /// Converts this int to days Duration
  Duration get xDays => Duration(days: this);
}
