import 'package:flutter/material.dart';

class AppColors {
  static const paper = Color(0xFFFFFFFF);
  static const paperDim = Color(0xFFF4F4F6);
  static const ink = Color(0xFF000000);
  static const inkLight = paper;
  static const secondary = Color(0xFF252537);
  static const tertiary = Color(0xFF8F8F99);
  static const accent = Color(0xFF7373A6);
  static const success = Color(0xFF52DE4F);
  static const danger = Color(0xFFF12E42);
  static const dangerHover = Color(0xFFC11A12);
  static const dangerLight = Color(0xFFFFB6C1);
}

class AppTheme {
  static const double radius = 20;

  static ThemeData light() {
    const colorScheme = ColorScheme.light(
      primary: AppColors.accent,
      onPrimary: AppColors.inkLight,
      secondary: AppColors.secondary,
      onSecondary: AppColors.inkLight,
      tertiary: AppColors.tertiary,
      onTertiary: AppColors.inkLight,
      error: AppColors.danger,
      onError: AppColors.paper,
      surface: AppColors.paper,
      onSurface: AppColors.ink,
      surfaceContainerHighest: AppColors.paperDim,
      onSurfaceVariant: AppColors.tertiary,
      outline: AppColors.accent,
      outlineVariant: AppColors.accent,
      inverseSurface: AppColors.secondary,
      onInverseSurface: AppColors.inkLight,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: AppColors.paperDim,
      fontFamily: 'Quicksand',
      visualDensity: VisualDensity.adaptivePlatformDensity,

      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: AppColors.ink,
        ),
        displayMedium: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppColors.ink,
        ),
        displaySmall: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColors.ink,
        ),
        headlineMedium: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: AppColors.ink,
        ),
        headlineSmall: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: AppColors.ink,
        ),
        titleMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: AppColors.ink,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          height: 1.4,
          color: AppColors.ink,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          height: 1.4,
          color: AppColors.ink,
        ),
        bodySmall: TextStyle(
          fontSize: 13,
          height: 1.4,
          fontStyle: FontStyle.italic,
          color: AppColors.tertiary,
        ),
      ),

      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: AppColors.secondary,
          foregroundColor: AppColors.inkLight,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 28,
            vertical: 12,
          ),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.secondary,
          side: const BorderSide(
            color: AppColors.secondary,
            width: 2,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 28,
            vertical: 12,
          ),
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.paper,
        contentPadding: const EdgeInsets.all(11.2),
        border: _inputBorder(),
        enabledBorder: _inputBorder(),
        focusedBorder: _inputBorder(width: 2),
      ),

      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.secondary,
        foregroundColor: AppColors.inkLight,
        elevation: 0,
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColors.inkLight,
        ),
      ),

      drawerTheme: const DrawerThemeData(
        backgroundColor: AppColors.secondary,
        surfaceTintColor: Colors.transparent,
        elevation: 4,
        shadowColor: Colors.transparent,
        scrimColor: Colors.black54,
        shape: RoundedRectangleBorder(),
        endShape: RoundedRectangleBorder(),
        clipBehavior: Clip.antiAlias,
      ),

      listTileTheme: const ListTileThemeData(
        style: ListTileStyle.drawer,
        textColor: AppColors.inkLight,
        iconColor: AppColors.inkLight,
        selectedColor: AppColors.inkLight,
        titleTextStyle: TextStyle(
          color: AppColors.inkLight,
          fontWeight: FontWeight.w600,
        ),
      ),

      cardTheme: CardThemeData(
        color: AppColors.paper,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),

      dialogTheme: DialogThemeData(
        backgroundColor: AppColors.paper,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),

      snackBarTheme: SnackBarThemeData(
        backgroundColor: AppColors.secondary,
        contentTextStyle: const TextStyle(
          color: AppColors.inkLight,
        ),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }

  static OutlineInputBorder _inputBorder({double width = 1}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(radius),
      borderSide: BorderSide(
        color: AppColors.accent,
        width: width,
      ),
    );
  }
}
