import 'package:cu_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  final TimeOfDay time;
  final String venue;

  const ServiceCard({
    super.key,
    required this.time,
    required this.venue,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        shadowColor: Color(AppColors.primary),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Icon(Icons.calendar_month, color: Color(AppColors.primary)),
              const SizedBox(width: 8),
              Text(
                'NEXT SERVICE',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Color(AppColors.primary),
                    ),
              ),
              const SizedBox(width: 8),
              Text(
                '$venue • ${time.format(context)}',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}