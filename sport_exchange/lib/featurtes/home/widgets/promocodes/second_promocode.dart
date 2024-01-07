import 'package:flutter/material.dart';

class SecondBanner extends StatelessWidget {
  const SecondBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.only(right: 24),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              image: AssetImage('assets/second-banner.png'),
            ),
          ),
        ),
      ),
    );
  }
}
