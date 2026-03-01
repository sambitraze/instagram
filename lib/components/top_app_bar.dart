import 'package:flutter/material.dart';
import 'package:instagram/utils/constant.dart';

class TopAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: blackBackground,
      floating: true,
      snap: true,
      pinned: false,
      elevation: 0,
      centerTitle: true,
      title: const Text(
        "Instagram",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}