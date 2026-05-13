import 'package:cu_app/core/providers/app_bar_provider.dart';
import 'package:flutter/material.dart';

class UoemcuAppBar extends StatefulWidget implements PreferredSizeWidget {
  final AppBarProvider appBarProvider;
  const UoemcuAppBar({super.key, required this.appBarProvider  });

  @override
  State<UoemcuAppBar> createState() => _UoemcuAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _UoemcuAppBarState extends State<UoemcuAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        widget.appBarProvider.title,
      ),
      actions: widget.appBarProvider.actions  ,
      backgroundColor: widget.appBarProvider.backgroundColor,
      centerTitle: true,
      elevation: 0,
    );
  }
}