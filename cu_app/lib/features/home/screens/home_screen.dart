import 'package:cu_app/shared/widgets/uoemcu_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: UoemcuAppBar(),
      body: SafeArea(child: Center(child: Text('Home Content'))),
    );
  }
}