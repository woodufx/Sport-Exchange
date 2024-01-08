import 'package:flutter/material.dart';
import 'package:auto_route/annotations.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Профиль'),
    );
  }
}
