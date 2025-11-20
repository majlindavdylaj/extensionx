import 'package:flutter/material.dart';

extension XBuildContextNullableExtension on BuildContext? {
  bool get xIsNull => this == null;
}

extension XBuildContextExtension on BuildContext {
  MediaQueryData get xMediaQuery => MediaQuery.of(this);

  ThemeData get xTheme => Theme.of(this);

  Size get xSize => xMediaQuery.size;

  double get xWidth => xSize.width;

  double get xHeight => xSize.height;

  double get xViewInsetsBottom => xMediaQuery.viewInsets.bottom;

  bool get xIsMobile => xWidth < 600;

  bool get xIsTablet => xWidth >= 600 && xWidth < 1200;

  bool get xIsDesktop => xWidth >= 1200;

  TextTheme get xTextTheme => xTheme.textTheme;

  ColorScheme get xColorScheme => xTheme.colorScheme;
}
