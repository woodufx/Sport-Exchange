import 'package:flutter/material.dart';
import 'package:sport_exchange/view/navigator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
            displayLarge: TextStyle(
              fontFamily: 'Oswald',
              fontSize: 32,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 26, 26, 26),
            ),
            displayMedium: TextStyle(
              fontFamily: 'Oswald',
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 26, 26, 26),
            ),
            displaySmall: TextStyle(
              fontFamily: 'Oswald',
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 26, 26, 26),
            ),
            bodyMedium: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 77, 77, 77),
            ),
            bodySmall: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 118, 118, 118),
            )),
        bottomAppBarTheme: const BottomAppBarTheme(
          color: Colors.white,
          surfaceTintColor: Colors.white,
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MainNavigator(),
    );
  }
}
