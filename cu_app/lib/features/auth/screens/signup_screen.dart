import 'package:cu_app/core/theme/app_colors.dart';
import 'package:cu_app/features/auth/widgets/signup_form.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 60),
                child: Column(children: [
                  const Image(image: AssetImage('assets/images/logo.png'), height: 150),
                  Text('Join Our Fellowship', style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Color(AppColors.primary)), ),
                  Text('Create your account to connect with the University of Embu Christian Union Community', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Color(AppColors.secondary)),textAlign: TextAlign.center,),
                  const SizedBox(height: 20),
                ]),
              ),
              const SignupForm(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already Have an account?', style: Theme.of(context).textTheme.bodyMedium,),
                  TextButton(onPressed: (){
                    Navigator.pushNamed(context, '/login');
                  }, child: Text('Login', style: TextStyle(color: Color(AppColors.primary)),)),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}