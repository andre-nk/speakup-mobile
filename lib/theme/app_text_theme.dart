// filepath: /Users/andreasnotokusumo/Documents/Flutter Projects/speakup-final/speakup/lib/theme/app_text_theme.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@immutable
class AppTextTheme extends ThemeExtension<AppTextTheme> {
  final TextStyle? speakupTypographyTextXsRegular;
  final TextStyle? speakupTypographyTextXsMedium;
  final TextStyle? speakupTypographyTextXsSemibold;
  final TextStyle? speakupTypographyTextXsBold;
  final TextStyle? speakupTypographyTextSmRegular;
  final TextStyle? speakupTypographyTextSmMedium;
  final TextStyle? speakupTypographyTextSmSemibold;
  final TextStyle? speakupTypographyTextSmBold;
  final TextStyle? speakupTypographyTextMdRegular;
  final TextStyle? speakupTypographyTextMdMedium;
  final TextStyle? speakupTypographyTextMdSemibold;
  final TextStyle? speakupTypographyTextMdBold;
  final TextStyle? speakupTypographyTextBaseRegular;
  final TextStyle? speakupTypographyTextBaseMedium;
  final TextStyle? speakupTypographyTextBaseSemibold;
  final TextStyle? speakupTypographyTextBaseBold;
  final TextStyle? speakupTypographyTextLgRegular;
  final TextStyle? speakupTypographyTextLgMedium;
  final TextStyle? speakupTypographyTextLgSemibold;
  final TextStyle? speakupTypographyTextLgBold;
  final TextStyle? speakupTypographyTextXlRegular;
  final TextStyle? speakupTypographyTextXlMedium;
  final TextStyle? speakupTypographyTextXlSemibold;
  final TextStyle? speakupTypographyTextXlBold;
  final TextStyle? speakupTypographyText2xlRegular;
  final TextStyle? speakupTypographyText2xlMedium;
  final TextStyle? speakupTypographyText2xlSemibold;
  final TextStyle? speakupTypographyText2xlBold;
  final TextStyle? speakupTypographyText3xlRegular;
  final TextStyle? speakupTypographyText3xlMedium;
  final TextStyle? speakupTypographyText3xlSemibold;
  final TextStyle? speakupTypographyText3xlBold;

  const AppTextTheme({
    this.speakupTypographyTextXsRegular,
    this.speakupTypographyTextXsMedium,
    this.speakupTypographyTextXsSemibold,
    this.speakupTypographyTextXsBold,
    this.speakupTypographyTextSmRegular,
    this.speakupTypographyTextSmMedium,
    this.speakupTypographyTextSmSemibold,
    this.speakupTypographyTextSmBold,
    this.speakupTypographyTextMdRegular,
    this.speakupTypographyTextMdMedium,
    this.speakupTypographyTextMdSemibold,
    this.speakupTypographyTextMdBold,
    this.speakupTypographyTextBaseRegular,
    this.speakupTypographyTextBaseMedium,
    this.speakupTypographyTextBaseSemibold,
    this.speakupTypographyTextBaseBold,
    this.speakupTypographyTextLgRegular,
    this.speakupTypographyTextLgMedium,
    this.speakupTypographyTextLgSemibold,
    this.speakupTypographyTextLgBold,
    this.speakupTypographyTextXlRegular,
    this.speakupTypographyTextXlMedium,
    this.speakupTypographyTextXlSemibold,
    this.speakupTypographyTextXlBold,
    this.speakupTypographyText2xlRegular,
    this.speakupTypographyText2xlMedium,
    this.speakupTypographyText2xlSemibold,
    this.speakupTypographyText2xlBold,
    this.speakupTypographyText3xlRegular,
    this.speakupTypographyText3xlMedium,
    this.speakupTypographyText3xlSemibold,
    this.speakupTypographyText3xlBold,
  });

  // Use factory constructor instead of const constructor since GoogleFonts are not const
  factory AppTextTheme.fallback() {
    return AppTextTheme(
      speakupTypographyTextXsRegular: GoogleFonts.plusJakartaSans(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.15,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
      ),
      speakupTypographyTextXsMedium: GoogleFonts.plusJakartaSans(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        height: 1.15,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
      ),
      speakupTypographyTextXsSemibold: GoogleFonts.plusJakartaSans(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        height: 1.33,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
      ),
      speakupTypographyTextXsBold: GoogleFonts.plusJakartaSans(
        fontSize: 12,
        fontWeight: FontWeight.w700,
        height: 1.33,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
      ),
      speakupTypographyTextSmRegular: GoogleFonts.plusJakartaSans(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.4,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
      ),
      speakupTypographyTextSmMedium: GoogleFonts.plusJakartaSans(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: 1.4,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
      ),
      speakupTypographyTextSmSemibold: GoogleFonts.plusJakartaSans(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        height: 1.29,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
      ),
      speakupTypographyTextSmBold: GoogleFonts.plusJakartaSans(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        height: 1.29,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
      ),
      speakupTypographyTextMdRegular: GoogleFonts.plusJakartaSans(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.5,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
      ),
      speakupTypographyTextMdMedium: GoogleFonts.plusJakartaSans(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        height: 1.38,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
      ),
      speakupTypographyTextMdSemibold: GoogleFonts.plusJakartaSans(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        height: 1.38,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
      ),
      speakupTypographyTextMdBold: GoogleFonts.plusJakartaSans(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        height: 1.38,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
      ),
      speakupTypographyTextBaseRegular: GoogleFonts.plusJakartaSans(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        height: 1.33,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
      ),
      speakupTypographyTextBaseMedium: GoogleFonts.plusJakartaSans(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        height: 1.33,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
      ),
      speakupTypographyTextBaseSemibold: GoogleFonts.plusJakartaSans(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        height: 1.33,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
      ),
      speakupTypographyTextBaseBold: GoogleFonts.plusJakartaSans(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        height: 1.33,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
      ),
      speakupTypographyTextLgRegular: GoogleFonts.plusJakartaSans(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        height: 1.4,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
      ),
      speakupTypographyTextLgMedium: GoogleFonts.plusJakartaSans(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        height: 1.4,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
      ),
      speakupTypographyTextLgSemibold: GoogleFonts.plusJakartaSans(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        height: 1.4,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
      ),
      speakupTypographyTextLgBold: GoogleFonts.plusJakartaSans(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        height: 1.4,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
      ),
      speakupTypographyTextXlRegular: GoogleFonts.plusJakartaSans(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        height: 1.25,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
      ),
      speakupTypographyTextXlMedium: GoogleFonts.plusJakartaSans(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        height: 1.25,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
      ),
      speakupTypographyTextXlSemibold: GoogleFonts.plusJakartaSans(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        height: 1.25,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
      ),
      speakupTypographyTextXlBold: GoogleFonts.plusJakartaSans(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        height: 1.25,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
      ),
      speakupTypographyText2xlRegular: GoogleFonts.plusJakartaSans(
        fontSize: 32,
        fontWeight: FontWeight.w400,
        height: 1.31,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
      ),
      speakupTypographyText2xlMedium: GoogleFonts.plusJakartaSans(
        fontSize: 32,
        fontWeight: FontWeight.w500,
        height: 1.31,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
      ),
      speakupTypographyText2xlSemibold: GoogleFonts.plusJakartaSans(
        fontSize: 32,
        fontWeight: FontWeight.w600,
        height: 1.31,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
      ),
      speakupTypographyText2xlBold: GoogleFonts.plusJakartaSans(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        height: 1.31,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
      ),
      speakupTypographyText3xlRegular: GoogleFonts.plusJakartaSans(
        fontSize: 36,
        fontWeight: FontWeight.w400,
        height: 1.28,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
      ),
      speakupTypographyText3xlMedium: GoogleFonts.plusJakartaSans(
        fontSize: 36,
        fontWeight: FontWeight.w500,
        height: 1.28,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
      ),
      speakupTypographyText3xlSemibold: GoogleFonts.plusJakartaSans(
        fontSize: 36,
        fontWeight: FontWeight.w600,
        height: 1.28,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
      ),
      speakupTypographyText3xlBold: GoogleFonts.plusJakartaSans(
        fontSize: 36,
        fontWeight: FontWeight.w700,
        height: 1.28,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
      ),
    );
  }

  @override
  AppTextTheme copyWith({
    TextStyle? speakupTypographyTextXsRegular,
    TextStyle? speakupTypographyTextXsMedium,
    TextStyle? speakupTypographyTextXsSemibold,
    TextStyle? speakupTypographyTextXsBold,
    TextStyle? speakupTypographyTextSmRegular,
    TextStyle? speakupTypographyTextSmMedium,
    TextStyle? speakupTypographyTextSmSemibold,
    TextStyle? speakupTypographyTextSmBold,
    TextStyle? speakupTypographyTextMdRegular,
    TextStyle? speakupTypographyTextMdMedium,
    TextStyle? speakupTypographyTextMdSemibold,
    TextStyle? speakupTypographyTextMdBold,
    TextStyle? speakupTypographyTextBaseRegular,
    TextStyle? speakupTypographyTextBaseMedium,
    TextStyle? speakupTypographyTextBaseSemibold,
    TextStyle? speakupTypographyTextBaseBold,
    TextStyle? speakupTypographyTextLgRegular,
    TextStyle? speakupTypographyTextLgMedium,
    TextStyle? speakupTypographyTextLgSemibold,
    TextStyle? speakupTypographyTextLgBold,
    TextStyle? speakupTypographyTextXlRegular,
    TextStyle? speakupTypographyTextXlMedium,
    TextStyle? speakupTypographyTextXlSemibold,
    TextStyle? speakupTypographyTextXlBold,
    TextStyle? speakupTypographyText2xlRegular,
    TextStyle? speakupTypographyText2xlMedium,
    TextStyle? speakupTypographyText2xlSemibold,
    TextStyle? speakupTypographyText2xlBold,
    TextStyle? speakupTypographyText3xlRegular,
    TextStyle? speakupTypographyText3xlMedium,
    TextStyle? speakupTypographyText3xlSemibold,
    TextStyle? speakupTypographyText3xlBold,
  }) {
    return AppTextTheme(
      speakupTypographyTextXsRegular: speakupTypographyTextXsRegular ?? this.speakupTypographyTextXsRegular,
      speakupTypographyTextXsMedium: speakupTypographyTextXsMedium ?? this.speakupTypographyTextXsMedium,
      speakupTypographyTextXsSemibold: speakupTypographyTextXsSemibold ?? this.speakupTypographyTextXsSemibold,
      speakupTypographyTextXsBold: speakupTypographyTextXsBold ?? this.speakupTypographyTextXsBold,
      speakupTypographyTextSmRegular: speakupTypographyTextSmRegular ?? this.speakupTypographyTextSmRegular,
      speakupTypographyTextSmMedium: speakupTypographyTextSmMedium ?? this.speakupTypographyTextSmMedium,
      speakupTypographyTextSmSemibold: speakupTypographyTextSmSemibold ?? this.speakupTypographyTextSmSemibold,
      speakupTypographyTextSmBold: speakupTypographyTextSmBold ?? this.speakupTypographyTextSmBold,
      speakupTypographyTextMdRegular: speakupTypographyTextMdRegular ?? this.speakupTypographyTextMdRegular,
      speakupTypographyTextMdMedium: speakupTypographyTextMdMedium ?? this.speakupTypographyTextMdMedium,
      speakupTypographyTextMdSemibold: speakupTypographyTextMdSemibold ?? this.speakupTypographyTextMdSemibold,
      speakupTypographyTextMdBold: speakupTypographyTextMdBold ?? this.speakupTypographyTextMdBold,
      speakupTypographyTextBaseRegular: speakupTypographyTextBaseRegular ?? this.speakupTypographyTextBaseRegular,
      speakupTypographyTextBaseMedium: speakupTypographyTextBaseMedium ?? this.speakupTypographyTextBaseMedium,
      speakupTypographyTextBaseSemibold: speakupTypographyTextBaseSemibold ?? this.speakupTypographyTextBaseSemibold,
      speakupTypographyTextBaseBold: speakupTypographyTextBaseBold ?? this.speakupTypographyTextBaseBold,
      speakupTypographyTextLgRegular: speakupTypographyTextLgRegular ?? this.speakupTypographyTextLgRegular,
      speakupTypographyTextLgMedium: speakupTypographyTextLgMedium ?? this.speakupTypographyTextLgMedium,
      speakupTypographyTextLgSemibold: speakupTypographyTextLgSemibold ?? this.speakupTypographyTextLgSemibold,
      speakupTypographyTextLgBold: speakupTypographyTextLgBold ?? this.speakupTypographyTextLgBold,
      speakupTypographyTextXlRegular: speakupTypographyTextXlRegular ?? this.speakupTypographyTextXlRegular,
      speakupTypographyTextXlMedium: speakupTypographyTextXlMedium ?? this.speakupTypographyTextXlMedium,
      speakupTypographyTextXlSemibold: speakupTypographyTextXlSemibold ?? this.speakupTypographyTextXlSemibold,
      speakupTypographyTextXlBold: speakupTypographyTextXlBold ?? this.speakupTypographyTextXlBold,
      speakupTypographyText2xlRegular: speakupTypographyText2xlRegular ?? this.speakupTypographyText2xlRegular,
      speakupTypographyText2xlMedium: speakupTypographyText2xlMedium ?? this.speakupTypographyText2xlMedium,
      speakupTypographyText2xlSemibold: speakupTypographyText2xlSemibold ?? this.speakupTypographyText2xlSemibold,
      speakupTypographyText2xlBold: speakupTypographyText2xlBold ?? this.speakupTypographyText2xlBold,
      speakupTypographyText3xlRegular: speakupTypographyText3xlRegular ?? this.speakupTypographyText3xlRegular,
      speakupTypographyText3xlMedium: speakupTypographyText3xlMedium ?? this.speakupTypographyText3xlMedium,
      speakupTypographyText3xlSemibold: speakupTypographyText3xlSemibold ?? this.speakupTypographyText3xlSemibold,
      speakupTypographyText3xlBold: speakupTypographyText3xlBold ?? this.speakupTypographyText3xlBold,
    );
  }

  @override
  AppTextTheme lerp(AppTextTheme? other, double t) {
    if (other is! AppTextTheme) return this;
    return AppTextTheme(
      speakupTypographyTextXsRegular: TextStyle.lerp(speakupTypographyTextXsRegular, other.speakupTypographyTextXsRegular, t),
      speakupTypographyTextXsMedium: TextStyle.lerp(speakupTypographyTextXsMedium, other.speakupTypographyTextXsMedium, t),
      speakupTypographyTextXsSemibold: TextStyle.lerp(speakupTypographyTextXsSemibold, other.speakupTypographyTextXsSemibold, t),
      speakupTypographyTextXsBold: TextStyle.lerp(speakupTypographyTextXsBold, other.speakupTypographyTextXsBold, t),
      speakupTypographyTextSmRegular: TextStyle.lerp(speakupTypographyTextSmRegular, other.speakupTypographyTextSmRegular, t),
      speakupTypographyTextSmMedium: TextStyle.lerp(speakupTypographyTextSmMedium, other.speakupTypographyTextSmMedium, t),
      speakupTypographyTextSmSemibold: TextStyle.lerp(speakupTypographyTextSmSemibold, other.speakupTypographyTextSmSemibold, t),
      speakupTypographyTextSmBold: TextStyle.lerp(speakupTypographyTextSmBold, other.speakupTypographyTextSmBold, t),
      speakupTypographyTextMdRegular: TextStyle.lerp(speakupTypographyTextMdRegular, other.speakupTypographyTextMdRegular, t),
      speakupTypographyTextMdMedium: TextStyle.lerp(speakupTypographyTextMdMedium, other.speakupTypographyTextMdMedium, t),
      speakupTypographyTextMdSemibold: TextStyle.lerp(speakupTypographyTextMdSemibold, other.speakupTypographyTextMdSemibold, t),
      speakupTypographyTextMdBold: TextStyle.lerp(speakupTypographyTextMdBold, other.speakupTypographyTextMdBold, t),
      speakupTypographyTextBaseRegular: TextStyle.lerp(speakupTypographyTextBaseRegular, other.speakupTypographyTextBaseRegular, t),
      speakupTypographyTextBaseMedium: TextStyle.lerp(speakupTypographyTextBaseMedium, other.speakupTypographyTextBaseMedium, t),
      speakupTypographyTextBaseSemibold: TextStyle.lerp(speakupTypographyTextBaseSemibold, other.speakupTypographyTextBaseSemibold, t),
      speakupTypographyTextBaseBold: TextStyle.lerp(speakupTypographyTextBaseBold, other.speakupTypographyTextBaseBold, t),
      speakupTypographyTextLgRegular: TextStyle.lerp(speakupTypographyTextLgRegular, other.speakupTypographyTextLgRegular, t),
      speakupTypographyTextLgMedium: TextStyle.lerp(speakupTypographyTextLgMedium, other.speakupTypographyTextLgMedium, t),
      speakupTypographyTextLgSemibold: TextStyle.lerp(speakupTypographyTextLgSemibold, other.speakupTypographyTextLgSemibold, t),
      speakupTypographyTextLgBold: TextStyle.lerp(speakupTypographyTextLgBold, other.speakupTypographyTextLgBold, t),
      speakupTypographyTextXlRegular: TextStyle.lerp(speakupTypographyTextXlRegular, other.speakupTypographyTextXlRegular, t),
      speakupTypographyTextXlMedium: TextStyle.lerp(speakupTypographyTextXlMedium, other.speakupTypographyTextXlMedium, t),
      speakupTypographyTextXlSemibold: TextStyle.lerp(speakupTypographyTextXlSemibold, other.speakupTypographyTextXlSemibold, t),
      speakupTypographyTextXlBold: TextStyle.lerp(speakupTypographyTextXlBold, other.speakupTypographyTextXlBold, t),
      speakupTypographyText2xlRegular: TextStyle.lerp(speakupTypographyText2xlRegular, other.speakupTypographyText2xlRegular, t),
      speakupTypographyText2xlMedium: TextStyle.lerp(speakupTypographyText2xlMedium, other.speakupTypographyText2xlMedium, t),
      speakupTypographyText2xlSemibold: TextStyle.lerp(speakupTypographyText2xlSemibold, other.speakupTypographyText2xlSemibold, t),
      speakupTypographyText2xlBold: TextStyle.lerp(speakupTypographyText2xlBold, other.speakupTypographyText2xlBold, t),
      speakupTypographyText3xlRegular: TextStyle.lerp(speakupTypographyText3xlRegular, other.speakupTypographyText3xlRegular, t),
      speakupTypographyText3xlMedium: TextStyle.lerp(speakupTypographyText3xlMedium, other.speakupTypographyText3xlMedium, t),
      speakupTypographyText3xlSemibold: TextStyle.lerp(speakupTypographyText3xlSemibold, other.speakupTypographyText3xlSemibold, t),
      speakupTypographyText3xlBold: TextStyle.lerp(speakupTypographyText3xlBold, other.speakupTypographyText3xlBold, t),
    );
  }
}
