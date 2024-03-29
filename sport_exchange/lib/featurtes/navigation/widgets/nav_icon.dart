import 'package:flutter/material.dart';

class NavIcon extends StatefulWidget {
  const NavIcon({super.key, required this.icon, required this.routeTo});

  final IconData icon;
  final String routeTo;

  @override
  _NavIconState createState() => _NavIconState();
}

class _NavIconState extends State<NavIcon> {
  @override
  Widget build(BuildContext context) {
    return const Icon(Icons.abc_outlined);
  }
}
