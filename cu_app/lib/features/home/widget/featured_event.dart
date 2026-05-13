import 'package:cu_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
// Assuming AppColors might be needed for text colors

class FeaturedEvent extends StatelessWidget {
  final String eventName;
  final String venue;
  final DateTime dateTime;
  final String backgroundImagePath; // New required property for background image

  const FeaturedEvent({
    super.key,
    required this.eventName,
    required this.venue,
    required this.dateTime,
    required this.backgroundImagePath, // Now required
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      clipBehavior: Clip.antiAlias, // Clip the image to the card's rounded corners
      child: Container(
        height: 180, // Example fixed height for the card
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(backgroundImagePath),
            fit: BoxFit.cover, // Cover the entire container
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.4), // Darken the image for text readability
              BlendMode.darken,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end, // Align content to the bottom
            children: [
              Text('FEATURED EVENT', style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Color(AppColors.primary)),),
              const SizedBox(height: 4),
              Text(eventName, style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
              const SizedBox(height: 4),
              Row(
                children: [
                  const Icon(Icons.location_on, color: Color(AppColors.primary), size: 16),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      venue,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Icon(Icons.calendar_today, color: Color(AppColors.primary), size: 16),
                  const SizedBox(width: 4),
                  Text(
                    '${dateTime.day}/${dateTime.month}/${dateTime.year}',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}