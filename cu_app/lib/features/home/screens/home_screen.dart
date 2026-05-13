import 'package:cu_app/core/providers/app_bar_provider.dart';
import 'package:cu_app/core/theme/app_colors.dart';
import 'package:cu_app/features/home/widget/featured_event.dart';
import 'package:cu_app/features/home/widget/mycards.dart';
import 'package:cu_app/features/home/widget/service_card.dart';
import 'package:cu_app/features/home/widget/vofd_card.dart';
import 'package:cu_app/shared/widgets/uoemcu_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    // Ensure the app bar starts with default values when entering Home
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AppBarProvider>().reset();
      context.read<AppBarProvider>().update(
        title: 'UoEm CU Home',
        actions:[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications, color: Color(AppColors.primary),),
          )  
        ]);
    });
  }

  @override
  Widget build(BuildContext context) {
    // Use watch instead of read in build so the UI updates 
    // when the AppBarProvider state changes.
    // read is still appropriate for the reset() call in initState 
    // because that's a one-time action inside a callback.
    final appBarController = context.watch<AppBarProvider>();

    return Scaffold(
      appBar: UoemcuAppBar(appBarProvider: appBarController,),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            spacing: 20,
            children: [
              // Add the FeaturedEvent widget
              const ServiceCard(time: TimeOfDay(hour: 10, minute: 0), venue: 'Auditorium'),
              const VerseofdCard(verse: 'For God so loved the world that he gave his only begotten Son that whoever believes in Him shall not perish but have eternal life.', book: 'John', chapter: 3, verseNumber: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                const Mycards(icon: Icons.people_alt, title: 'Community', subtitle: 'Find your community. Active group meetings this week across campus',),
                const Mycards(icon: Icons.edit_document, title: 'Daily Devotion', subtitle: "Walking in Grace. Today's reflection on finding peace in the  middle of a storm"),
                const Mycards(icon: Icons.money, title: 'Give & Tithe', subtitle: 'Support our mission. Secure and simple digital tithing for our church family'),
                const SizedBox(height: 26),
                FeaturedEvent(eventName: 'Worship Night: The Awakening', venue: 'Auditorium', dateTime: DateTime(2023, 10, 27, 18, 0), backgroundImagePath: 'assets/images/event_bg.jpeg')
                ],
              ),
            ],
          ))),
    );
  }
}