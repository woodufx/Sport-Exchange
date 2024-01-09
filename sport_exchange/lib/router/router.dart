import 'package:auto_route/auto_route.dart';
import 'package:sport_exchange/featurtes/articles/article/view/article_screen.dart';
import 'package:sport_exchange/featurtes/articles/articles_list/view/articles_list_screen.dart';
import 'package:sport_exchange/featurtes/dashboard/view/dasboard_screen.dart';
import 'package:sport_exchange/featurtes/home/view/main_screen.dart';
import 'package:sport_exchange/featurtes/login/view/login_screen.dart';
import 'package:sport_exchange/featurtes/profile/view/profile_screen.dart';
import 'package:sport_exchange/featurtes/shop/shop_item/view/shop_item_screen.dart';
import 'package:sport_exchange/featurtes/shop/shop_list/view/shop_list_screen.dart';
import 'package:sport_exchange/featurtes/transactions/view/transactions_screen.dart';
import 'package:sport_exchange/featurtes/wishlist/view/wishlist.dart';
part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: DashboardRoute.page,
          children: [
            AutoRoute(path: 'home', page: MainRoute.page),
            AutoRoute(path: 'transactions', page: TransactionsRoute.page),
            AutoRoute(path: 'articles', page: ArticlesListRoute.page),
            AutoRoute(path: 'profile', page: ProfileRoute.page),
          ],
        ),
        AutoRoute(page: LoginRoute.page, path: '/login'),
        AutoRoute(page: ArticleRoute.page, path: '/article'),
        AutoRoute(page: ShopItemRoute.page, path: '/shop-item'),
        AutoRoute(page: ShopListRoute.page, path: '/shop-list'),
        AutoRoute(page: WishlistRoute.page, path: '/wish-list'),
      ];
}
