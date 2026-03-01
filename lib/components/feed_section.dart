import 'package:flutter/material.dart';
import 'package:instagram/components/post_card.dart';

class FeedSection extends StatelessWidget {
  const FeedSection({super.key});

  @override
  Widget build(BuildContext context) {
   return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => const PostCard(),
        childCount: 10,
      ),
    );
  }
}