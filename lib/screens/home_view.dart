import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/themes/utils/app_color.dart';
import '../widgets/category_list_view.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/product_list_view.dart';
import '../widgets/search_dield.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height * 0.35,
            color: AppColor.primaryColor,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                const SizedBox(height: 35),

                FadeInRight(
                  duration: const Duration(milliseconds: 500),
                  child: Text(
                    'Hello , Mahmoud',
                    style: GoogleFonts.montserrat(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                FadeInRight(
                  duration: const Duration(milliseconds: 500),
                  child: Text(
                    'What do you want to buy?',
                    style: GoogleFonts.montserrat(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      // color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SearchField(),
          Positioned(
            top: MediaQuery.sizeOf(context).height * 0.4,
            left: 0,
            right: 0,
            bottom: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 90,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,

                    // borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: AppColor.hintColor.withOpacity(0.7),
                        blurRadius: 5,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: CategoryListView(),
                ),
                Expanded(child: ProductListView()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
