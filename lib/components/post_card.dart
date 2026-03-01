import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header
        ListTile(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 12),
          leading: const CircleAvatar(
            backgroundImage:
                NetworkImage("https://i.pravatar.cc/150?img=1"),
          ),
          title: const Text(
            "username",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 13,
            ),
          ),
          subtitle: const Text(
            "Artist · Song Title",
            style: TextStyle(fontSize: 12),
          ),
          trailing: const Icon(Icons.more_horiz),
        ),

        // Image
        AspectRatio(
          aspectRatio: 4 / 5,
          child: Image.network(
            "https://i.pravatar.cc/500?img=1",
            fit: BoxFit.cover,
          ),
        ),

        const SizedBox(height: 10),

        // Actions
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: const [
              Icon(Icons.favorite_border, size: 26),
              SizedBox(width: 16),
              Icon(Icons.mode_comment_outlined, size: 26),
              SizedBox(width: 16),
              Icon(Icons.send_outlined, size: 26),
              Spacer(),
              Icon(Icons.bookmark_border, size: 26),
            ],
          ),
        ),

        const SizedBox(height: 12),
      ],
    );
  }
}