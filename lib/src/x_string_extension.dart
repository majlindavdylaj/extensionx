/// Extension for nullable String
extension XStringNullableExtension on String? {
  /// Returns true if the string is null
  bool get xIsNull => this == null;

  /// Returns true if the string is null or only contains whitespace
  bool get xIsNullOrBlank => this == null || this!.trim().isEmpty;
}

/// Extension for non-nullable String
extension XStringExtension on String {
  /// Capitalizes the first letter of the string
  String get xCapitalize {
    return isEmpty ? this : '${this[0].toUpperCase()}${substring(1)}';
  }

  /// Converts each word in the string to title case
  String xToTitleCase() {
    if (isEmpty) return this;
    return split(' ').map((word) => word.xCapitalize).join(' ');
  }

  /// Returns true if the string matches a basic email pattern
  bool get xIsEmail {
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    return emailRegex.hasMatch(this);
  }
}
