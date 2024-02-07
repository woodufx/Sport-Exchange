import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_exchange/constants/app_colors.dart';
import 'package:sport_exchange/featurtes/profile/bloc/profile_bloc.dart';

class UserBalance extends StatefulWidget {
  const UserBalance({super.key});

  @override
  State<UserBalance> createState() => _UserBalanceState();
}

class _UserBalanceState extends State<UserBalance> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<ProfileBloc>(context).add(const ProfileGetEvent());
  }

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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      BlocBuilder<ProfileBloc, ProfileState>(
                          builder: (context, state) {
                        if (state is ProfileLoaded) {
                          final user = state.user.content;
                          return Text(
                            '${user.balance}₽',
                            style: Theme.of(context).textTheme.displaySmall,
                          );
                        } else {
                          return Text(
                            '⏳',
                            style: Theme.of(context).textTheme.displaySmall,
                          );
                        }
                      }),
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
