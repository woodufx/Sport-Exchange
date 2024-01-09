import 'package:flutter/material.dart';
import 'package:sport_exchange/constants/app_colors.dart';

final mainTheme = ThemeData(
    fontFamily: 'Montserrat',
    primarySwatch: Colors.orange,
    scaffoldBackgroundColor: Colors.white,
    textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontFamily: 'Oswald',
          fontSize: 32,
          fontWeight: FontWeight.w600,
          color: AppColors.darkBlack,
        ),
        displayMedium: TextStyle(
          fontFamily: 'Oswald',
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: AppColors.darkBlack,
        ),
        displaySmall: TextStyle(
          fontFamily: 'Oswald',
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: AppColors.darkBlack,
        ),
        bodyMedium: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: AppColors.secondaryBlack,
        ),
        bodySmall: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: AppColors.mainTextGray,
          height: 1.6,
        )));
