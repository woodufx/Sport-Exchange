import 'package:flutter/material.dart';
import 'package:sport_exchange/constants/app_colors.dart';

class UserBalance extends StatelessWidget {
  const UserBalance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF000000).withOpacity(0.05),
                offset: const Offset(0, 4),
                blurRadius: 28,
                spreadRadius: 0,
              ),
            ],
          ),
          padding: const EdgeInsets.all(16),
          child: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Баланс кошелька',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: AppColors.mainBlack,
                      ),
                    ),
                    Row(children: [
                      InkWell(
                        child: const Icon(Icons.account_balance_wallet_outlined,
                            size: 24),
                        onTap: () => {},
                      ),
                      const SizedBox(width: 10),
                      Text(
                        '1.000.000₽',
                        style: Theme.of(context).textTheme.displaySmall,
                      )
                    ])
                  ],
                ),
                const VerticalDivider(
                  color: AppColors.inputBorder,
                  thickness: 1,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Пополнить баланс',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: AppColors.mainBlack,
                      ),
                    ),
                    Row(children: [
                      InkWell(
                        child: const Icon(Icons.add_circle_outline, size: 24),
                        onTap: () => {},
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Пополнить',
                        style: Theme.of(context).textTheme.displaySmall,
                      )
                    ])
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
