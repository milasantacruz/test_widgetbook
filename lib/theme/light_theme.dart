import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import "package:test_widgetbook/theme/app_theme_data.dart";
import 'package:google_fonts/google_fonts.dart';

const ColorScheme flexSchemeLight= ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xffd2e4ff),
  onPrimary: Color(0xff001225),
  primaryContainer: Color(0xff00497f),
  onPrimaryContainer: Color(0xfff8f9ff),
  secondary: Color(0xffffede8),
  onSecondary: Color(0xff270600),
  secondaryContainer: Color(0xff832600),
  onSecondaryContainer: Color(0xfffff8f6),
  tertiary: Color(0xffd3f7ff),
  onTertiary: Color(0xff001418),
  tertiaryContainer: Color(0xff004e59),
  onTertiaryContainer: Color(0xffeefcff),
  error: Color(0xffffb4ab),
  onError: Color(0xff2d0001),
  errorContainer: Color(0xff93000a),
  onErrorContainer: Color(0xfffff8f7),
  background: Color(0xff111315),
  onBackground: Color(0xfffdfcfe),
  surface: Color(0xff0b0c0d),
  onSurface: Color(0xfffdfcfe),
  surfaceVariant: Color(0xff272a2e),
  onSurfaceVariant: Color(0xffeff0f7),
  outline: Color(0xffc5c6cc),
  outlineVariant: Color(0xff75777d),
  shadow: Color(0xff000000),
  scrim: Color(0xff000000),
  inverseSurface: Color(0xffefeff0),
  onInverseSurface: Color(0xff1b1c1d),
  inversePrimary: Color(0xff0061a6),
  surfaceTint: Color(0xffd2e4ff),
);
TextTheme textTheme= TextTheme(
                displayLarge: TextStyle(
                color:flexSchemeLight.outline,
                height: 0.9,
                fontSize: 80,
                fontWeight: FontWeight.bold,
                fontFamily:  GoogleFonts.poppins().fontFamily,
                ),
                displaySmall: TextStyle(
                color:flexSchemeLight.outline,
                height: 1.2,
                fontSize: 26,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.poppins().fontFamily,
              ),
                labelLarge: TextStyle(
                color:flexSchemeLight.outline,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily:  GoogleFonts.roboto().fontFamily,
              ),
              labelSmall: TextStyle(
                color:flexSchemeLight.outline,
                fontSize: 12,
                fontWeight: FontWeight.normal,
                fontFamily:  GoogleFonts.roboto().fontFamily,
              ),
              titleLarge: TextStyle(
                color:flexSchemeLight.outline,
                height: 1.2,
                fontSize: 20,
                fontWeight: FontWeight.w800,
                fontFamily: GoogleFonts.poppins().fontFamily,
              ),
              titleMedium: TextStyle(
                color:flexSchemeLight.outline,
                height: 0.8,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontFamily: GoogleFonts.roboto().fontFamily,
              ),
              titleSmall: TextStyle(
                color:flexSchemeLight.outline,
                height: 0.8,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: GoogleFonts.poppins().fontFamily,
              ),
              bodySmall: TextStyle(
                color:flexSchemeLight.outline,
                fontSize: 12,
                fontWeight: FontWeight.normal,
                fontFamily: GoogleFonts.roboto().fontFamily,
              ),
              bodyMedium: TextStyle(
                color:flexSchemeLight.outline,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                fontFamily: GoogleFonts.roboto().fontFamily,
              ),
              bodyLarge: TextStyle(
                color:flexSchemeLight.outline,
                height: 1.3,
                fontWeight: FontWeight.w500,
                fontSize: 18,
                fontFamily: GoogleFonts.roboto().fontFamily,
              ),
            );

ThemeData flexThemeLight = FlexThemeData.light(
  scheme: FlexScheme.redM3,
  colorScheme: flexSchemeLight,
  usedColors: 7,
  surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
  blendLevel: 7,
  scaffoldBackground: Color.fromARGB(255, 255, 255, 255),
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 10,
    blendOnColors: true,
    useTextTheme: true,
    useM2StyleDividerInM3: true,
    //switchSchemeColor: SchemeColor.secondary,
    //alignedDropdown: true,
    useInputDecoratorThemeInDialogs: true,
    ),
  useMaterial3ErrorColors: true,
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  //useMaterial3: true,
  swapLegacyOnMaterial3: true,
  // To use the Playground font, add GoogleFonts package and uncomment
  // fontFamily: GoogleFonts.notoSans().fontFamily,
).copyWith(
  textTheme: textTheme,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 20, 20, 20)),
      foregroundColor: MaterialStateProperty.all<Color>(flexSchemeLight.onPrimary),
    ),
  ),
);
