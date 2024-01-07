import 'package:flutter/material.dart';

class NavIcon extends StatefulWidget {
  const NavIcon({Key? key, required this.icon, required this.routeTo})
      : super(key: key);

  final IconData icon;
  final String routeTo;

  @override
  _NavIconState createState() => _NavIconState();
}

class _NavIconState extends State<NavIcon> {
  @override
  Widget build(BuildContext context) {
    return Icon(Icons.abc_outlined);
  }
}
