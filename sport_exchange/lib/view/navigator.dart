import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MainNavigator extends StatelessWidget {
  const MainNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 16),
          child: GNav(
            tabBackgroundColor: const Color.fromARGB(255, 255, 240, 228),
            color: const Color.fromARGB(255, 165, 165, 165),
            tabBorderRadius: 10.0,
            iconSize: 24.0,
            activeColor: const Color.fromARGB(255, 242, 101, 34),
            rippleColor: const Color.fromARGB(255, 255, 240, 228),
            onTabChange: (index) => {print(index)},
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            tabs: const [
              GButton(icon: Icons.home_outlined),
              GButton(icon: Icons.sync_alt_outlined),
              GButton(icon: Icons.article_outlined),
              GButton(
                icon: Icons.person_outline_rounded,
              )
            ],
          )),
      body: Container(),
    );
  }
}
