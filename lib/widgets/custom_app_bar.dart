import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../core/utils/app_color.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      duration: const Duration(milliseconds: 500),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage('assets/elnagar.png'),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu, size: 35, color: AppColor.backgroundColor),
          ),
        ],
      ),
    );
  }
}
