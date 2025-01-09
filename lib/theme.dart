import 'package:flutter/material.dart';

const MaterialColor primaryWhite = MaterialColor(
  0xFFFFFF,
  <int, Color>{
    50: Color(0xFFFFFFFF), // 100% 화이트
    100: Color(0xFFF5F5F5),
    200: Color(0xFFEEEEEE),
    300: Color(0xFFE0E0E0),
    400: Color(0xFFBDBDBD),
    500: Color(0xFF9E9E9E),
    600: Color(0xFF757575),
    700: Color(0xFF616161),
    800: Color(0xFF424242),
    900: Color(0xFF212121),
  },
);

ThemeData theme() {
  // 앱 전반적인 테마
  return ThemeData(
      primarySwatch: primaryWhite,
      appBarTheme:
          const AppBarTheme(iconTheme: IconThemeData(color: Colors.blue)));
}
