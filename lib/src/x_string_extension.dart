extension XStringNullableExtension on String? {
  bool get xIsNull => this == null;

  bool get xIsNullOrBlank => this == null || this!.trim().isEmpty;
}

extension XStringExtension on String {
  String get xCapitalize {
    return isEmpty ? this : '${this[0].toUpperCase()}${substring(1)}';
  }

  String xToTitleCase() {
    if (isEmpty) return this;
    return split(' ').map((word) => word.xCapitalize).join(' ');
  }

  bool get xIsEmail {
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    return emailRegex.hasMatch(this);
  }
}
