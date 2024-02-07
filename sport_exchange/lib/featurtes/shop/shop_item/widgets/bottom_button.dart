import 'package:flutter/material.dart';
import 'package:sport_exchange/common/widgets/custom-icon-button.dart';
import 'package:sport_exchange/constants/app_colors.dart';

class BottomButton extends StatelessWidget {
  const BottomButton(
      {super.key,
      this.onAddToCardPressed,
      this.onFavouritesPressed,
      required this.isActiveButton,
      required this.isFavourite});
  final bool isFavourite;
  final bool isActiveButton;
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
              backgroundColor: isActiveButton
                  ? MaterialStateProperty.all(AppColors.primaryOrange)
                  : MaterialStateProperty.all(AppColors.additionalGray),
              elevation: MaterialStateProperty.all(0),
              overlayColor: isActiveButton
                  ? MaterialStateProperty.all(AppColors.buttonHighlight)
                  : MaterialStateProperty.all(AppColors.additionalGray),
            ),
            onPressed: onAddToCardPressed,
            child: Center(
              child: Text(
                  isActiveButton
                      ? 'Добавить в корзину'.toUpperCase()
                      : 'Товар уже в корзине'.toUpperCase(),
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: AppColors.white,
                      )),
            ),
          ),
        ),
        const SizedBox(width: 16),
        CustomIconButton(
            buttonIcon: isFavourite
                ? const Icon(Icons.favorite_rounded,
                    color: AppColors.primaryOrange, size: 30, weight: 4)
                : const Icon(Icons.favorite_outline_rounded,
                    color: AppColors.primaryOrange, size: 30, weight: 4),
            onTap: onFavouritesPressed)
      ],
    );
  }
}
