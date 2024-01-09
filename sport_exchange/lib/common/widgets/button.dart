import 'package:flutter/material.dart';
import 'package:sport_exchange/constants/app_colors.dart';

class Button extends StatefulWidget {
  const Button({Key? key, required this.onPressed, required this.text})
      : super(key: key);
  final VoidCallback onPressed;
  final String text;

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(vertical: 14),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(AppColors.primaryOrange),
        elevation: MaterialStateProperty.all(0),
        overlayColor: MaterialStateProperty.all(AppColors.buttonHighlight),
      ),
      onPressed: () => widget.onPressed(), // вызываем функцию onPressed
      child: Center(
        child: Text(
          widget.text.toUpperCase(),
          style: Theme.of(context).textTheme.displaySmall?.copyWith(
                color: AppColors.white,
              ),
        ),
      ),
    );
  }
}
