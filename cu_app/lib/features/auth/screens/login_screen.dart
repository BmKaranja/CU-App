import 'package:cu_app/features/auth/widgets/login_form.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/images/logo.png'), height: 150),
            Text('Welcome to UOEM CU', style: Theme.of(context).textTheme.headlineMedium, ),
            Text('One Lord, One Faith , One Baptism', style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: 20),
            LoginForm()
          ],
        ),
      ),
    );
  }
}