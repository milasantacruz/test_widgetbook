import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import "package:test_widgetbook/theme/app_theme_data.dart";
import 'package:google_fonts/google_fonts.dart';

const ColorScheme flexSchemeDark= ColorScheme(
  brightness: Brightness.dark,
  primary: Color.fromARGB(255, 58, 13, 7),
  onPrimary: Color(0xff141211),
  primaryContainer: Color(0xff930006),
  onPrimaryContainer: Color(0xfff6dfe0),
  secondary: Color(0xffffb59c),
  onSecondary: Color(0xff141210),
  secondaryContainer: Color(0xff783116),
  onSecondaryContainer: Color(0xfff2e7e3),
  tertiary: Color(0xff9bcbff),
  onTertiary: Color(0xff101314),
  tertiaryContainer: Color(0xff004a79),
  onTertiaryContainer: Color(0xffdfebf2),
  error: Color(0xffffb4ab),
  onError: Color(0xff141211),
  errorContainer: Color(0xff93000a),
  onErrorContainer: Color(0xfff6dfe1),
  background: Color(0xff1d1918),
  onBackground: Color(0xffedecec),
  surface: Color(0xff1d1918),
  onSurface: Color(0xffedecec),
  surfaceVariant: Color(0xff463f3e),
  onSurfaceVariant: Color(0xffe1e0e0),
  outline: Color(0xff7d7676),
  outlineVariant: Color(0xff2e2c2c),
  shadow: Color(0xff000000),
  scrim: Color(0xff000000),
  inverseSurface: Color(0xfffffbfa),
  onInverseSurface: Color(0xff141313),
  inversePrimary: Color(0xff775c57),
  surfaceTint: Color(0xffffb4aa),
);

TextTheme textTheme= TextTheme(
                displayLarge: TextStyle(
                color:flexSchemeDark.outline,
                height: 0.9,
                fontSize: 80,
                fontWeight: FontWeight.bold,
                fontFamily:  GoogleFonts.poppins().fontFamily,
                ),
                displaySmall: TextStyle(
                color:flexSchemeDark.outline,
                height: 1.2,
                fontSize: 26,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.poppins().fontFamily,
              ),
                labelLarge: TextStyle(
                color:flexSchemeDark.outline,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily:  GoogleFonts.roboto().fontFamily,
              ),
              labelSmall: TextStyle(
                color:flexSchemeDark.outline,
                fontSize: 12,
                fontWeight: FontWeight.normal,
                fontFamily:  GoogleFonts.roboto().fontFamily,
              ),
              titleLarge: TextStyle(
                color:flexSchemeDark.outline,
                height: 1.2,
                fontSize: 20,
                fontWeight: FontWeight.w800,
                fontFamily: GoogleFonts.poppins().fontFamily,
              ),
              titleMedium: TextStyle(
                color:flexSchemeDark.outline,
                height: 0.8,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontFamily: GoogleFonts.roboto().fontFamily,
              ),
              titleSmall: TextStyle(
                color:flexSchemeDark.outline,
                height: 0.8,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: GoogleFonts.poppins().fontFamily,
              ),
              bodySmall: TextStyle(
                color:flexSchemeDark.outline,
                fontSize: 12,
                fontWeight: FontWeight.normal,
                fontFamily: GoogleFonts.roboto().fontFamily,
              ),
              bodyMedium: TextStyle(
                color:flexSchemeDark.outline,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                fontFamily: GoogleFonts.roboto().fontFamily,
              ),
              bodyLarge: TextStyle(
                color:flexSchemeDark.outline,
                height: 1.3,
                fontWeight: FontWeight.w500,
                fontSize: 18,
                fontFamily: GoogleFonts.roboto().fontFamily,
              ),
            );

ThemeData flexThemeDark = FlexThemeData.dark(
  scheme: FlexScheme.custom,
  colorScheme: flexSchemeDark,
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
  brightness: Brightness.dark,
  
);