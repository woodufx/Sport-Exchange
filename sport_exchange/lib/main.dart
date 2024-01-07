import 'package:flutter/material.dart';
import 'package:sport_exchange/featurtes/home/view/main_screen.dart';
import 'package:sport_exchange/featurtes/home/widgets/promocodes.dart';
import 'package:sport_exchange/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sport exchange',
      theme: mainTheme,
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
    );
  }
}
