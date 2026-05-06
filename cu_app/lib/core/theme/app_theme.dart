import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cu_app/core/theme/app_colors.dart';

class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: Color(AppColors.primary),
      scaffoldBackgroundColor: Color(AppColors.background),
      // Apply Noto Serif to the entire text theme
      textTheme: GoogleFonts.notoSerifTextTheme(
        ThemeData.dark().textTheme, // Use dark theme's text styles as a base
      ).apply(
        bodyColor: Color(AppColors.onBackground), // Apply your onBackground color
        displayColor: Color(AppColors.onBackground), // Apply your onBackground color
      ),
      // You can add more theme properties here
    );
  }
}