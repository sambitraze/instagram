import 'package:flutter/material.dart';
import 'package:instagram/components/feed_section.dart';
import 'package:instagram/components/stories_section.dart';
import 'package:instagram/components/top_app_bar.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: const [
          TopAppBar(),
          StoriesSection(),
          FeedSection(),
        ],
      ),
    );
  }
}
