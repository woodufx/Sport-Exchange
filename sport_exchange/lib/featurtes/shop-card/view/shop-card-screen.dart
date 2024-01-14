import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_exchange/common/widgets/appbar.dart';
import 'package:sport_exchange/constants/app_colors.dart';
import 'package:sport_exchange/featurtes/shop-card/bloc/bucket_bloc.dart';
import 'package:sport_exchange/featurtes/shop-card/widgets/shop-card-item.dart';

@RoutePage()
class ShopCardScreen extends StatelessWidget {
  const ShopCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: CustomAppBar(currentRouteName: 'Корзина'),
        ),
        body: BlocBuilder<BucketBloc, BucketState>(
          builder: (context, state) {
            if (state is BucketLoaded) {
              return ListView(
                children: List.generate(
                    state.bucket.content.length,
                    (index) => Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: ShopCardItem(
                            key: UniqueKey(),
                            isChecked: false,
                            item: state.bucket.content[index],
                          ),
                        )),
              );
            } else {
              return const Center(
                  child: CircularProgressIndicator(
                color: AppColors.primaryOrange,
              ));
            }
          },
        ),
        bottomNavigationBar:
            BlocBuilder<BucketBloc, BucketState>(builder: (context, state) {
          int totalElements = 0;
          int sum = 0;
          if (state is BucketLoaded) {
            totalElements = state.bucket.content.length;
            sum = state.bucket.content
                .map((item) => item.amount * item.product.price)
                .reduce((value, element) => value + element);
          }
          return BottomAppBar(
            height: 90,
            color: AppColors.white,
            surfaceTintColor: AppColors.white,
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
              onPressed: () => {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Заказать $totalElements вещей'.toUpperCase(),
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.white,
                          )),
                  Text('$sum₽'.toUpperCase(),
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(color: AppColors.white, fontSize: 18)),
                ],
              ),
            ),
          );
        }));
  }
}
