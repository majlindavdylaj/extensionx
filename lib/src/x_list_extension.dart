extension XListNullableExtension<T> on List<T>? {
  bool get xIsNull => this == null;

  bool get xIsNullOrEmpty => this == null || this!.isEmpty;
}

extension XListExtension<T> on List<T> {
  List<T> get xRemoveDuplicates {
    return toSet().toList();
  }
}
