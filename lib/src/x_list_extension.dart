/// Extension for nullable List
extension XListNullableExtension<T> on List<T>? {
  /// Returns true if the list is null
  bool get xIsNull => this == null;

  /// Returns true if the list is null or empty
  bool get xIsNullOrEmpty => this == null || this!.isEmpty;
}

/// Extension for non-nullable List
extension XListExtension<T> on List<T> {
  /// Returns a new list with duplicate items removed
  List<T> get xRemoveDuplicates {
    return toSet().toList();
  }
}
