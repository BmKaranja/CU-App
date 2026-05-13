import 'package:cu_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class Mycards extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  const Mycards({super.key, required this.icon, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    final primaryColor = Color(AppColors.primary);

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      ),
      child: Padding(
        padding: const EdgeInsets.all(26),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(icon, color: primaryColor, size: 40,),
              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios, color: primaryColor, size: 20,))
            ],
          ),
        const SizedBox(height: 16,),
        Text(title, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: primaryColor),),
        Text(subtitle, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Color(AppColors.tertiary)),)
      ]),
      ),
    );
  }
}