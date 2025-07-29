import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../core/themes/utils/app_color.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.sizeOf(context).height * 0.3,
      left: 16,
      right: 16,
      child: FadeInUp(
        duration: const Duration(milliseconds: 500),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: AppColor.hintColor.withOpacity(0.4),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  style: const TextStyle(fontSize: 24),
                  decoration: InputDecoration(
                    hintText: 'Search ',
                    hintStyle: TextStyle(color: Colors.grey[400], fontSize: 24),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: AppColor.primaryColor,
                      size: 40,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
