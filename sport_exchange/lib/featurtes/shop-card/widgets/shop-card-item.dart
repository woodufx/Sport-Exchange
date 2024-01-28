import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_exchange/api/models/bucket_model.dart';
import 'package:sport_exchange/common/widgets/image_wrapper.dart';
import 'package:sport_exchange/constants/app_colors.dart';
import 'package:sport_exchange/featurtes/shop-card/bloc/bucket_bloc.dart';

class ShopCardItem extends StatelessWidget {
  const ShopCardItem({super.key, required this.isChecked, required this.item});

  final BucketModel item;
  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minHeight: 100,
        maxHeight: 120,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ImageWrapper(
              aspectRatio: 0.87,
              imageUrl: item.product.pictureUrls[0],
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    item.product.name.toUpperCase(),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall
                        ?.copyWith(fontSize: 18),
                  ),
                  Row(
                    children: [
                      Text(
                        'Размер: ',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: AppColors.iconsGray, fontSize: 12),
                      ),
                      Text(
                        item.size,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(10),
                        splashColor: AppColors.highlightOrangeColor,
                        highlightColor: AppColors.highlightOrangeColor,
                        child: const Icon(
                          Icons.remove,
                          size: 16,
                          color: AppColors.primaryOrange,
                        ),
                        onTap: () => {
                          BlocProvider.of<BucketBloc>(context).add(
                              BucketAmountEvent(
                                  model: BucketUpdateModel(
                                      amount: item.amount - 1,
                                      productId: item.product.id,
                                      size: item.size.replaceAll(' ', ''))))
                        },
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        item.amount.toString(),
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  fontSize: 12,
                                ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      InkWell(
                        borderRadius: BorderRadius.circular(10),
                        splashColor: AppColors.highlightOrangeColor,
                        highlightColor: AppColors.highlightOrangeColor,
                        child: const Icon(
                          Icons.add,
                          size: 16,
                          color: AppColors.primaryOrange,
                        ),
                        onTap: () => {
                          BlocProvider.of<BucketBloc>(context).add(
                              BucketAmountEvent(
                                  model: BucketUpdateModel(
                                      amount: item.amount + 1,
                                      productId: item.product.id,
                                      size: item.size.replaceAll(' ', ''))))
                        },
                      ),
                    ],
                  ),
                  Text(
                    '${(item.amount * item.product.price)}₽',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: AppColors.primaryOrange,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            )
          ]),
    );
  }
}
