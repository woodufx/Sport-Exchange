import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_exchange/common/widgets/appbar.dart';
import 'package:sport_exchange/constants/app_colors.dart';
import 'package:sport_exchange/featurtes/wishlist/bloc/wishlist_bloc.dart';
import 'package:sport_exchange/featurtes/wishlist/widgets/wish-list-card/wish-list-card.dart';

@RoutePage()
class WishlistScreen extends StatelessWidget {
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: CustomAppBar(currentRouteName: 'Вишлист'),
        ),
        body: BlocBuilder<WishlistBloc, WishlistState>(
          builder: (context, state) {
            if (state is WishlistLoaded) {
              final products = state.wishlist.content;
              return ListView.separated(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  itemCount: products.length,
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 16,
                      ),
                  itemBuilder: (context, index) => (WishListCard(
                        key: UniqueKey(),
                        product: products[index],
                      )));
            } else {
              return const Center(
                child: CircularProgressIndicator(
                  color: AppColors.primaryOrange,
                ),
              );
            }
          },
        ));
  }
}
