import 'package:flutter/material.dart';

class StoriesItem extends StatelessWidget {
  final String imageUrl;
  final String username;
  final bool isYourStory;
  final bool hasSeen;

  const StoriesItem({
    super.key,
    required this.imageUrl,
    required this.username,
    this.isYourStory = false,
    this.hasSeen = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            _buildAvatar(),
            if (isYourStory)
              Positioned(
                bottom: -2,
                right: -2,
                child: Container(
                  height: 22,
                  width: 22,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  child: const Icon(
                    Icons.add,
                    size: 14,
                    color: Colors.white,
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: 6),
        SizedBox(
          width: 70,
          child: Text(
            username,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildAvatar() {
    return Container(
      padding: const EdgeInsets.all(2.5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: hasSeen
            ? null
            : const LinearGradient(
                colors: [
                  Color(0xFF7638FA),
                  Color(0xFFD300C5),
                  Color(0xFFFF0069),
                  Color(0xFFFF7A00),
                  Color(0xFFFFD600),
                ],
              ),
        color: hasSeen ? const Color(0xFF2A2A2A) : null,
      ),
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black,
        ),
        child: CircleAvatar(
          radius: 32,
          backgroundImage: NetworkImage(imageUrl),
        ),
      ),
    );
  }
}