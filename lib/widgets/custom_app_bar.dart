import 'package:flutter/material.dart';

import '../core/utils/app_color.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
