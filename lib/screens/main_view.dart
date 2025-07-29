import 'package:flutter/material.dart';
import 'package:iti/screens/home_view.dart';
import 'package:iti/screens/profile_view.dart';

import '../core/themes/utils/app_color.dart';
import 'search_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    HomeView(),
    SearchView(),
    SearchView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: AppColor.primaryColor,
        unselectedItemColor: AppColor.hintColor,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        // backgroundColor: Colors.white,
        // elevation: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.event_seat), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.timer), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
        ],
      ),
    );
  }
}
