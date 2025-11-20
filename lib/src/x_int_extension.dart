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
}
