import 'package:cu_app/features/auth/screens/login_screen.dart';
import 'package:cu_app/splash.dart';
import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart'; // Import your new theme file
void main() {
  runApp(const CUApp());
}

class CUApp extends StatelessWidget {
  const CUApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UoEm CU App',
      theme: AppTheme.darkTheme, // Use the centralized dark theme
      initialRoute: '/',
      routes: {
        '/': (context) => Splash(),
        '/login': (context) => LoginScreen(),
      },
    );
  }
}