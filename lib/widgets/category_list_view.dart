import 'package:flutter/material.dart';

import 'category_item.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 10),
      scrollDirection: Axis.horizontal,
      children: const [
        CategoryItem(icon: 'assets/sofas.png', label: 'Sofas'),
        CategoryItem(icon: 'assets/wardrobe.png', label: 'Wardrobe'),
        CategoryItem(icon: 'assets/disk.png', label: 'Desk'),
        CategoryItem(icon: 'assets/dresser.png', label: 'Dresser'),
      ],
    );
  }
}
