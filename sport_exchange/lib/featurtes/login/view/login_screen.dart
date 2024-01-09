import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sport_exchange/common/widgets/button.dart';
import 'package:sport_exchange/featurtes/login/view/widgets/login_input.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 52),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/sport-shoes.svg',
              height: 37,
            ),
            const SizedBox(height: 42),
            const LoginInput(placeholder: 'Логин'),
            const SizedBox(height: 16),
            const LoginInput(
              placeholder: 'Пароль',
              obscureText: true,
            ),
            const SizedBox(height: 32),
            Button(
              onPressed: () => {},
              text: 'Войти',
            ),
          ],
        ),
      ),
    );
  }
}
