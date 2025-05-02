import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_text_theme.dart';

class AppTheme {
  /// Create a light theme with the given [colorScheme]
  static ThemeData lightTheme() {
    final appTextTheme = AppTextTheme.fallback();

    // Create a ColorScheme based on AppColors
    const colorScheme = ColorScheme(
      primary: AppColors.speakupKeyPrimary,
      primaryContainer: AppColors.speakupPrimary95,
      secondary: AppColors.speakupSecondary50,
      secondaryContainer: AppColors.speakupSecondary90,
      tertiary: AppColors.speakupKeyTertiary,
      tertiaryContainer: AppColors.speakupTertiary95,
      surface: AppColors.speakupSecondary95,
      surfaceContainerHighest: AppColors.speakupWhite,
      error: AppColors.speakupKeyError,
      errorContainer: AppColors.speakupError95,
      onPrimary: AppColors.speakupPrimary100,
      onPrimaryContainer: AppColors.speakupPrimary10,
      onSecondary: AppColors.speakupSecondary100,
      onSecondaryContainer: AppColors.speakupSecondary10,
      onTertiary: AppColors.speakupTertiary100,
      onTertiaryContainer: AppColors.speakupTertiary10,
      onSurface: AppColors.speakupNeutral10,
      onSurfaceVariant: AppColors.speakupNeutralVariant30,
      onError: AppColors.speakupError100,
      onErrorContainer: AppColors.speakupError10,
      brightness: Brightness.light,
      outline: AppColors.speakupNeutralVariant50,
      outlineVariant: AppColors.speakupSecondary95,
      shadow: AppColors.speakupBlack,
      scrim: AppColors.speakupBlack,
      inverseSurface: AppColors.speakupNeutral20,
      onInverseSurface: AppColors.speakupNeutral95,
      inversePrimary: AppColors.speakupPrimary80,
      surfaceTint: AppColors.speakupKeyPrimary,
    );

    // Create the base theme using the colorScheme
    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,

      // Apply text styles from our custom typography
      textTheme: TextTheme(
        // Display styles
        displayLarge: appTextTheme.speakupTypographyText3xlBold,
        displayMedium: appTextTheme.speakupTypographyText2xlBold,
        displaySmall: appTextTheme.speakupTypographyTextXlBold,

        // Headline styles
        headlineLarge: appTextTheme.speakupTypographyTextLgBold,
        headlineMedium: appTextTheme.speakupTypographyTextLgSemibold,
        headlineSmall: appTextTheme.speakupTypographyTextBaseBold,

        // Title styles
        titleLarge: appTextTheme.speakupTypographyTextBaseSemibold,
        titleMedium: appTextTheme.speakupTypographyTextMdSemibold,
        titleSmall: appTextTheme.speakupTypographyTextSmSemibold,

        // Body styles
        bodyLarge: appTextTheme.speakupTypographyTextBaseRegular,
        bodyMedium: appTextTheme.speakupTypographyTextMdRegular,
        bodySmall: appTextTheme.speakupTypographyTextSmRegular,

        // Label styles
        labelLarge: appTextTheme.speakupTypographyTextMdMedium,
        labelMedium: appTextTheme.speakupTypographyTextSmMedium,
        labelSmall: appTextTheme.speakupTypographyTextXsRegular,
      ),

      // Add the custom text theme as an extension
      extensions: <ThemeExtension<dynamic>>[appTextTheme],

      // Define additional theme properties
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.surface,
        foregroundColor: colorScheme.onSurface,
        elevation: 0,
        centerTitle: true,
      ),

      // Card theme
      cardTheme: CardTheme(
        color: colorScheme.surface,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),

      // Button themes
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.secondary,
          foregroundColor: colorScheme.onSecondary,
          textStyle: appTextTheme.speakupTypographyTextBaseSemibold,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
          elevation: 0,
        ),
      ),

      // Floating Action Button theme
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.secondary,
        foregroundColor: colorScheme.secondary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: colorScheme.primary,
          textStyle: appTextTheme.speakupTypographyTextMdMedium,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          side: BorderSide(color: colorScheme.outline),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: colorScheme.primary,
          textStyle: appTextTheme.speakupTypographyTextMdMedium,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        ),
      ),

      // Input decoration
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: colorScheme.surfaceContainerHighest,
        contentPadding: const EdgeInsets.all(16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colorScheme.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colorScheme.error, width: 2),
        ),
        labelStyle: appTextTheme.speakupTypographyTextSmRegular?.copyWith(
          color: colorScheme.onSurfaceVariant,
        ),
        hintStyle: appTextTheme.speakupTypographyTextSmRegular?.copyWith(
          color: colorScheme.onSurfaceVariant.withOpacity(0.7),
        ),
      ),

      // Scaffold background color
      scaffoldBackgroundColor: colorScheme.surface,

      // Divider theme
      dividerTheme: DividerThemeData(
        color: colorScheme.outlineVariant,
        thickness: 1,
        space: 1,
      ),
    );
  }
}
