import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AppColorsScheme {
  final Color primary;
  final Color secondary;
  final Color tertiary;

  final Color textPrimary;
  final Color textSecondary;

  final Color accentPrimary;
  final Color accentSecondary;

  final Color strokePrimary;

  const AppColorsScheme({
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.textPrimary,
    required this.textSecondary,
    required this.accentPrimary,
    required this.accentSecondary,
    required this.strokePrimary,
  });

  static AppColorsScheme dark = AppColorsScheme(
      primary: Color(0xFF000000),
      secondary: Color(0xFFFFFFFF),
      tertiary: Color(0xFF1E1E1E),
      textPrimary: Color(0xFFFFFFFF),
      textSecondary: Color(0xFFDEDEDE),
      accentPrimary: Color(0xFFFF0000),
      accentSecondary: Color(0xFF6D6D6D),
      strokePrimary: Color(0xFF6D6D6D),
    );

    static Future<AppColorsScheme> load() async {
        var box = await Hive.openBox('settings');
        var theme = box.get('theme')?.toString() ?? "";

        switch (theme.toLowerCase()) {
          case "dark": return dark;
          default: return dark;
        }
    }
}

final appColorsNotifier = ValueNotifier<AppColorsScheme>(
  AppColorsScheme.dark, // default scheme
);

