import 'package:flutter/material.dart';
import 'package:instagram/components/stories_item.dart';

class StoriesSection extends StatelessWidget {
  const StoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 105,
        child: ListView.separated(
          physics: const ClampingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 12),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return StoriesItem(
              imageUrl: "https://i.pravatar.cc/150?img=$index",
              username: index == 0 ? "Your story" : "username$index",
              isYourStory: index == 0,
              hasSeen: index % 3 == 0,
            );
          },
          separatorBuilder: (_, __) => const SizedBox(width: 12),
          itemCount: 10,
        ),
      ),
    );
  }
}
