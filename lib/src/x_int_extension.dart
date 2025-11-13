extension XIntNullableExtension on int? {
  bool get xIsNull => this == null;

  bool get xIsNullOrZero => this == null || this == 0;
}

extension XIntExtension on int {
  bool get xIsEven => isEven;

  bool get xIsOdd => isOdd;
}
