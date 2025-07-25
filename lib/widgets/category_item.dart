import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String icon;
  final String label;
  const CategoryItem({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(icon, height: 50, width: 50),
          const SizedBox(height: 8),
          Text(label, style: TextStyle(fontSize: 18, color: Colors.grey[700])),
        ],
      ),
    );
  }
}
