import 'package:cu_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  
  TextEditingController fnameController = TextEditingController();
  TextEditingController rgnoControeller = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController password1Controller = TextEditingController();
  TextEditingController password2Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shadowColor: Color(AppColors.primary),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      ),
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.only(top: 54.0, bottom:30, left: 16, right: 16),
        child: Form(
          child:Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 20,
            children: [
              TextFormField(
                controller: fnameController,
                decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      iconColor: Color(AppColors.secondary),
                      label: Text('Full Name'),
                      border: OutlineInputBorder(),
                    ),
              ),
              TextFormField(
                controller: rgnoControeller,
                decoration: const InputDecoration(
                      icon: Icon(Icons.numbers),
                      iconColor: Color(AppColors.secondary),
                      label: Text('Registration Number'),
                      border: OutlineInputBorder(),
                    ),  
              ),
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                      icon: Icon(Icons.email),
                      iconColor: Color(AppColors.secondary),
                      label: Text('Email'),
                      border: OutlineInputBorder(),
                    ),
              ),
              TextFormField(
                controller: password1Controller,
                obscureText: true,
                decoration: const InputDecoration(
                      icon: Icon(Icons.lock),
                      iconColor: Color(AppColors.secondary),
                      label: Text('Password'),
                      border: OutlineInputBorder(),
                    ),
              ),
              TextFormField(
                controller: password2Controller,
                obscureText: true,
                decoration: const InputDecoration(
                      icon: Icon(Icons.lock),
                      iconColor: Color(AppColors.secondary),
                      label: Text('Confirm Password'),
                      border: OutlineInputBorder(),
                    ),
              
              ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 48),
                      backgroundColor: Color(AppColors.primary),
                    ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/homescreen');
                  }, child: const Text('SignUp', style: TextStyle(color: Colors.black),)),
            ],
          )),
      ),
    );
  }
}