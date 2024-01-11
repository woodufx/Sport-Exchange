import 'package:flutter/material.dart';
import 'package:sport_exchange/common/widgets/custom-icon-button.dart';
import 'package:sport_exchange/constants/app_colors.dart';

class BottomButton extends StatelessWidget {
  const BottomButton(
      {Key? key, this.onAddToCardPressed, this.onFavouritesPressed})
      : super(key: key);
  final VoidCallback? onAddToCardPressed;
  final VoidCallback? onFavouritesPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(vertical: 14),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )),
              backgroundColor:
                  MaterialStateProperty.all(AppColors.primaryOrange),
              elevation: MaterialStateProperty.all(0),
              overlayColor:
                  MaterialStateProperty.all(AppColors.buttonHighlight),
            ),
            onPressed: onAddToCardPressed,
            child: Center(
              child: Text('Добавить в корзину'.toUpperCase(),
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: AppColors.white,
                      )),
            ),
          ),
        ),
        const SizedBox(width: 16),
        CustomIconButton(
            buttonIcon: const Icon(Icons.favorite_outline_rounded,
                color: AppColors.primaryOrange, size: 30, weight: 4),
            onTap: onFavouritesPressed)
      ],
    );
  }
}
