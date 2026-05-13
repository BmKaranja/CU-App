import 'package:cu_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class UoemcuNavBar extends StatefulWidget {
  const UoemcuNavBar({super.key});

  @override
  State<UoemcuNavBar> createState() => _UoemcuNavBarState();
}

class _UoemcuNavBarState extends State<UoemcuNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Color(AppColors.primary),
        items: const[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.edit_document), label: 'Materials'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ]),
    );
  }
}