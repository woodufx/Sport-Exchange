import 'package:flutter/material.dart';

class FirstBanner extends StatelessWidget {
  const FirstBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 0, 8, 0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              image: AssetImage('assets/first-banner.png'),
            ),
          ),
        ),
      ),
    );
  }
}
