import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sport_exchange/common/widgets/button.dart';
import 'package:sport_exchange/constants/app_colors.dart';
import 'package:sport_exchange/featurtes/login/view/bloc/login_bloc.dart';
import 'package:sport_exchange/featurtes/login/view/widgets/login_input.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sport_exchange/router/router.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key, this.header}) : super(key: key);

  final String? header;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isError = false;
  late TextEditingController loginController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    loginController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    bool isAnyInputFocused = false;

    void handleFocusChange(bool hasFocus) {
      isAnyInputFocused = !hasFocus ? false : true;
    }

    final router = AutoRouter.of(context);

    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) async {
        if (state is LoginSuccess) {
          setState(() {
            isError = false;
          });
          SharedPreferences prefs = await SharedPreferences.getInstance();
          prefs.setString('token', state.header.content.header);
          router.replace(const DashboardRoute());
        }
        if (state is LoginFailure) {
          setState(() {
            isError = true;
          });
        }
      },
      child: GestureDetector(
        onTap: () {
          if (isAnyInputFocused) {
            FocusManager.instance.primaryFocus?.unfocus();
          }
        },
        child: Scaffold(
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
                LoginInput(
                  placeholder: 'Логин',
                  onFocusChanged: handleFocusChange,
                  controller: loginController,
                ),
                const SizedBox(height: 16),
                LoginInput(
                  placeholder: 'Пароль',
                  obscureText: true,
                  onFocusChanged: handleFocusChange,
                  controller: passwordController,
                ),
                !isError
                    ? const SizedBox(height: 32)
                    : Container(
                        height: 32,
                        alignment: Alignment.center,
                        child: Text(
                          'Введен неверный логин или пароль',
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: AppColors.error,
                                    fontSize: 12,
                                  ),
                        ),
                      ),
                Button(
                  onPressed: () {
                    BlocProvider.of<LoginBloc>(context).add(
                      Authorize(
                        login: loginController.text,
                        password: passwordController.text,
                      ),
                    );
                  },
                  text: 'Войти',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
