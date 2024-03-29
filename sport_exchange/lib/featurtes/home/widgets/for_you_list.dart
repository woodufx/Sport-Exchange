import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_exchange/constants/app_colors.dart';
import 'package:sport_exchange/featurtes/shop/shop_item/widgets/shop_card.dart';
import 'package:sport_exchange/featurtes/shop/shop_list/bloc/shop_item_bloc.dart';

class ForYouList extends StatefulWidget {
  const ForYouList({super.key});

  @override
  State<ForYouList> createState() => _ForYouListState();
}

class _ForYouListState extends State<ForYouList> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<ShopItemBloc>(context)
        .add(const ShopItemGetEvent(searchQuery: ''));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Товары для тебя'.toUpperCase(),
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontSize: 20,
                ),
          ),
          const SizedBox(height: 16),
          BlocBuilder<ShopItemBloc, ShopItemState>(builder: (context, state) {
            if (state is ShopItemLoaded) {
              final products = state.products.content;
              return GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  childAspectRatio: 0.54,
                ),
                itemCount: products.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, index) {
                  return ShopCard(
                    product: products[index],
                  );
                },
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(
                  color: AppColors.primaryOrange,
                ),
              );
            }
          }),
        ],
      ),
    );
  }
}
