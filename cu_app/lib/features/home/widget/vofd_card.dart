import 'package:cu_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class VerseofdCard extends StatelessWidget {
  final String verse;
  final String book;
  final int chapter;
  final int verseNumber;

  const VerseofdCard({super.key, required this.verse, required this.book, required this.chapter, required this.verseNumber});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor:Color(AppColors.secondary),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0), // Added padding for better spacing
        child: Column(
          children: [
            Text(
              'Verse of the Day',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Color(AppColors.primary)),
            ),
            const SizedBox(height: 8),
            Text(
              verse,
              style: Theme.of(context).textTheme.bodyLarge
            ),
            const SizedBox(height: 8),
            Text(
              '$book $chapter:$verseNumber',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Color(AppColors.primary)), // Applied consistent style
            ),
          ],
        ),
      ),
    );
  }
}