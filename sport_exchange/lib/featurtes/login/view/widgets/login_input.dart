import 'package:flutter/material.dart';
import 'package:sport_exchange/constants/app_colors.dart';

class LoginInput extends StatefulWidget {
  const LoginInput({
    Key? key,
    required this.placeholder,
    this.obscureText,
    required this.onFocusChanged,
    required this.controller,
  }) : super(key: key);

  final String placeholder;
  final bool? obscureText;
  final ValueChanged<bool> onFocusChanged;
  final TextEditingController controller;

  @override
  _LoginInputState createState() => _LoginInputState();
}

class _LoginInputState extends State<LoginInput> {
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      widget.onFocusChanged(_focusNode.hasFocus);
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      focusNode: _focusNode,
      obscureText: widget.obscureText ?? false,
      style: const TextStyle(
        fontSize: 12,
        color: AppColors.additionalGray,
      ),
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: AppColors.primaryOrange,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: AppColors.inputBorder,
          ),
        ),
        filled: true,
        fillColor: AppColors.white,
        hintText: widget.placeholder,
        hintStyle: const TextStyle(
          fontSize: 12,
          color: AppColors.additionalGray,
          fontWeight: FontWeight.w400,
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 0.0,
          horizontal: 16.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
