import 'package:cu_app/core/theme/app_colors.dart';
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
            Text('Welcome to UOEM CU', style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Color(AppColors.primary)), ),
            Text('One Lord, One Faith , One Baptism', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Color(AppColors.secondary)),textAlign: TextAlign.center,),
            const SizedBox(height: 20),
            LoginForm(),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                   Text('Have not signed up yet?'),
                   TextButton(onPressed: (){
                     Navigator.pushNamed(context, '/signup');
                }, child: Text('SignUp', style: TextStyle(color: Color(AppColors.primary)),)),
              ],
            )
          ],
        ),
      ),
    );
  }
}