import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_exchange/api/models/product_model.dart';
import 'package:sport_exchange/api/models/wishlist_model.dart';
import 'package:sport_exchange/common/widgets/custom-icon-button.dart';
import 'package:sport_exchange/common/widgets/image_wrapper.dart';
import 'package:sport_exchange/constants/app_colors.dart';
import 'package:sport_exchange/featurtes/wishlist/bloc/wishlist_bloc.dart';
import 'package:sport_exchange/featurtes/wishlist/widgets/wish-list-card/wish-list-card-info.dart';

class WishListCard extends StatefulWidget {
  const WishListCard({super.key, required this.product});
  final ProductModel product;

  @override
  State<WishListCard> createState() => _WishListCardState();
}

class _WishListCardState extends State<WishListCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 88,
      child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ImageWrapper(
              aspectRatio: 1,
              imageUrl: widget.product.pictureUrls[0],
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: WishListCardInfo(
                itemName: widget.product.name,
                price: widget.product.price,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            CustomIconButton(
                onTap: () {
                  BlocProvider.of<WishlistBloc>(context).add(
                    WishlistDeleteEvent(
                        model: WishlistUpdateDeleteModel(
                            productIds: [widget.product.id])),
                  );
                },
                buttonIcon: const Icon(
                  Icons.favorite,
                  color: AppColors.primaryOrange,
                  size: 18,
                )),
          ]),
    );
  }
}
