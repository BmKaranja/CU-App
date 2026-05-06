import 'package:flutter/material.dart';
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override

  void initState() {
    super.initState();
    _navigateNext();
  }

  Future<void> _navigateNext() async {
    await Future.delayed(const Duration(seconds: 6));
    // ignore: use_build_context_synchronously
    Navigator.pushReplacementNamed(context, "/login");
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
            child:Image(image: AssetImage('assets/images/logo.png')),
      ),
    );
  }
}