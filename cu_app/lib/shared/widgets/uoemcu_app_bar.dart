import 'package:flutter/material.dart';

class UoemcuAppBar extends StatefulWidget implements PreferredSizeWidget {
  const UoemcuAppBar({super.key});

  @override
  State<UoemcuAppBar> createState() => _UoemcuAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _UoemcuAppBarState extends State<UoemcuAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UOEM CU'),
      ),
    );
  }
}