import 'package:flutter/material.dart';

/// Extension for nullable BuildContext
extension XBuildContextNullableExtension on BuildContext? {
  /// Returns true if the context is null
  bool get xIsNull => this == null;
}

/// Extension for non-nullable BuildContext
extension XBuildContextExtension on BuildContext {
  /// Gets the MediaQuery data for the context
  MediaQueryData get xMediaQuery => MediaQuery.of(this);

  /// Gets the ThemeData for the context
  ThemeData get xTheme => Theme.of(this);

  /// Gets the Size of the screen
  Size get xSize => xMediaQuery.size;

  /// Gets the screen width
  double get xWidth => xSize.width;

  /// Gets the screen height
  double get xHeight => xSize.height;

  /// Gets the bottom view inset (e.g., keyboard height)
  double get xViewInsetsBottom => xMediaQuery.viewInsets.bottom;

  /// Returns true if the screen width is less than 600 (mobile)
  bool get xIsMobile => xWidth < 600;

  /// Returns true if the screen width is between 600 and 1199 (tablet)
  bool get xIsTablet => xWidth >= 600 && xWidth < 1200;

  /// Returns true if the screen width is 1200 or more (desktop)
  bool get xIsDesktop => xWidth >= 1200;

  /// Gets the TextTheme from the current theme
  TextTheme get xTextTheme => xTheme.textTheme;

  /// Gets the ColorScheme from the current theme
  ColorScheme get xColorScheme => xTheme.colorScheme;
}
