import 'package:cu_app/core/providers/app_bar_provider.dart';
import 'package:cu_app/features/auth/screens/login_screen.dart';
import 'package:cu_app/features/auth/screens/signup_screen.dart';
import 'package:cu_app/features/bible_study/screens/study_groups_screen.dart';
import 'package:cu_app/features/events/screens/events_screen.dart';
import 'package:cu_app/features/events/screens/registration_screen.dart';
import 'package:cu_app/features/home/screens/home_screen.dart';
import 'package:cu_app/features/library/screens/materials_screen.dart';
import 'package:cu_app/splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/theme/app_theme.dart'; // Import your new theme file
void main() {
  runApp(const CUApp());
}

class CUApp extends StatelessWidget {
  const CUApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppBarProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'UoEm CU App',
        theme: AppTheme.darkTheme, // Use the centralized dark theme
        initialRoute: '/',
        routes: {
          '/': (context) => Splash(),
          '/login': (context) => LoginScreen(),
          '/signup': (context) => SignupScreen(),
          '/homescreen': (context) => HomeScreen(),
          '/studygroup': (context) => StudyGroupsScreen(),
          '/events': (context) => EventsScreen(),
          '/registration': (context) => RegistrationScreen(),
          '/materials': (context) => MaterialsScreen(),
        },
      ),
    );
  }
}