import 'package:cu_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shadowColor: Color(AppColors.secondary),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      ),
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.only(top: 54.0, bottom:30, left: 16, right: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.email),
                      iconColor: Color(AppColors.secondary),
                      label: Text('Email'),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.lock),
                      iconColor: Color(AppColors.secondary),
                      label: Text('Password'),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(AppColors.primary),
                    ),
                  onPressed: () {}, child: const Text('Login', style: TextStyle(color: Colors.black),)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}