import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sport_exchange/featurtes/navigation/widgets/bottom_app_bar.dart';
import 'package:sport_exchange/featurtes/navigation/widgets/top_app_bar.dart';
import 'package:sport_exchange/router/router.dart';

@RoutePage()
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
        routes: const [
          MainRoute(),
          ShopItemRoute(),
          ArticlesListRoute(),
          ProfileRoute(),
        ],
        builder: (context, child, controller) {
          final tabsRouter = AutoTabsRouter.of(context);
          return Scaffold(
            appBar: AppBar(title: const TopAppBar()),
            body: child,
            bottomNavigationBar: CustomBottomAppBar(
              selectedIndex: tabsRouter.activeIndex,
              onTabChange: (index) => tabsRouter.setActiveIndex(index),
            ),
          );
        });
  }
}
