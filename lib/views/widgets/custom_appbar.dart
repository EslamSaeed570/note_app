import 'package:flutter/material.dart';

import 'custom_search_icons.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 24),
        ),
        Spacer(),
        CustomIcon(
          icon: icon,
        )
      ],
    );
  }
}
