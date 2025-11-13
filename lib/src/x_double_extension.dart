import 'dart:math';

extension XDoubleNullableExtension on double? {
  bool get xIsNull => this == null;

  bool get xIsNullOrZero => this == null || this == 0;
}

extension XDoubleExtension on double {
  double xRoundToDecimals(int decimals) {
    num val = pow(10.0, decimals);
    return ((this * val).round().toDouble() / val);
  }
}
