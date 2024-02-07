import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_exchange/api/models/bucket_model.dart';
import 'package:sport_exchange/api/models/product_model.dart';
import 'package:sport_exchange/api/models/wishlist_model.dart';
import 'package:sport_exchange/common/widgets/appbar.dart';
import 'package:sport_exchange/featurtes/shop-card/bloc/bucket_bloc.dart';
import 'package:sport_exchange/featurtes/shop/shop_item/widgets/widgets.dart';
import 'package:sport_exchange/featurtes/wishlist/bloc/wishlist_bloc.dart';

@RoutePage()
class ShopItemScreen extends StatefulWidget {
  const ShopItemScreen({super.key, required this.product});
  final ProductModel product;

  @override
  State<ShopItemScreen> createState() => _ShopItemScreenState();
}

class _ShopItemScreenState extends State<ShopItemScreen> {
  String currentStateSize = '';
  bool isFavouriteItem = false;
  bool isActiveBucketButton = true;

  @override
  void initState() {
    super.initState();
    currentStateSize = widget.product.sizes[0];
  }

  void setSize(String size) {
    setState(() {
      currentStateSize = size;
    });
  }

  void setIsFavouriteItem(bool isFavourite) {
    setState(() {
      isFavouriteItem = isFavourite;
    });
  }

  void setIsActiveButton(bool isActive) {
    setState(() {
      isActiveBucketButton = isActiveBucketButton;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(currentRouteName: ''),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          ImageCarousel(
            imageUrls: widget.product.pictureUrls,
          ),
          const SizedBox(height: 16),
          ProductHeader(
            productName: widget.product.name,
            price: widget.product.price,
            categoryName: 'Кроссовки для бега',
            isLarge: true,
          ),
          const SizedBox(height: 18),
          Text(widget.product.description,
              style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(height: 30),
          Wrap(
              spacing: 16,
              runSpacing: 10,
              children: widget.product.sizes
                  .map((currentSize) => SizeCard(
                        size: currentSize,
                        onSizeSelect: setSize,
                        isSelected: currentSize == currentStateSize,
                      ))
                  .toList()),
          const SizedBox(height: 24),
          BlocBuilder<WishlistBloc, WishlistState>(builder: (context, state) {
            bool isFavourite = false;
            bool isActive = true;
            final bucketBloc = context.watch<BucketBloc>();
            if (bucketBloc.state is BucketLoaded) {
              BucketLoaded bucketState = bucketBloc.state as BucketLoaded;
              isActive = !bucketState.bucket.content
                  .where((element) => element.product.id == widget.product.id)
                  .toList()
                  .any((element) =>
                      element.size == currentStateSize.replaceAll(' ', ''));
            }
            if (state is WishlistLoaded) {
              isFavourite = state.wishlist.content.any((element) =>
                  element.id.toString() == widget.product.id.toString());
              return BottomButton(
                key: UniqueKey(),
                isFavourite: isFavourite,
                isActiveButton: isActive,
                onAddToCardPressed: () => {
                  isActive
                      ? BlocProvider.of<BucketBloc>(context)
                          .add(BucketUpdateEvent(model: [
                          BucketUpdateModel(
                              amount: 1,
                              productId: widget.product.id,
                              size: currentStateSize.replaceAll(' ', ''))
                        ]))
                      : () {}
                },
                onFavouritesPressed: () {
                  BlocProvider.of<WishlistBloc>(context).add(
                    isFavourite
                        ? WishlistDeleteEvent(
                            model: WishlistUpdateDeleteModel(
                                productIds: [widget.product.id]))
                        : WishlistUpdateEvent(
                            model: WishlistUpdateDeleteModel(
                                productIds: [widget.product.id])),
                  );
                },
              );
            }
            return const SizedBox();
          }),
          const SizedBox(height: 40)
        ],
      ),
    );
  }
}
