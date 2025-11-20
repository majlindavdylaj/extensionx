import 'dart:math';

/// Extension for nullable double
extension XDoubleNullableExtension on double? {
  /// Returns true if the double is null
  bool get xIsNull => this == null;

  /// Returns true if the double is null or zero
  bool get xIsNullOrZero => this == null || this == 0;
}

/// Extension for non-nullable double
extension XDoubleExtension on double {
  /// Rounds the double to [decimals] number of decimal places
  double xRoundToDecimals(int decimals) {
    num val = pow(10.0, decimals);
    return ((this * val).round().toDouble() / val);
  }
}
