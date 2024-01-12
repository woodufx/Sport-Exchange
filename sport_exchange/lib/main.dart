import 'package:flutter/material.dart';
import "package:flutter_bloc/flutter_bloc.dart";
import 'package:intl/date_symbol_data_local.dart';
import 'package:sport_exchange/api/api.dart';
import 'package:sport_exchange/featurtes/articles/bloc/article_bloc.dart';
import 'package:sport_exchange/featurtes/login/view/bloc/login_bloc.dart';
import 'package:sport_exchange/featurtes/orders/bloc/order_bloc.dart';
import 'package:sport_exchange/featurtes/profile/bloc/profile_bloc.dart';
import 'package:sport_exchange/featurtes/shop/shop_item/bloc/bucket_bloc.dart';
import 'package:sport_exchange/featurtes/shop/shop_list/bloc/shop_item_bloc.dart';
import 'package:sport_exchange/featurtes/transactions/bloc/transaction_bloc.dart';
import 'package:sport_exchange/featurtes/wishlist/bloc/wishlist_bloc.dart';
import 'package:sport_exchange/router/router.dart';
import 'package:sport_exchange/theme/theme.dart';

Future<void> main() async {
  initializeDateFormatting('ru', null).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    final client = initRestClient();

    final profileBloc = ProfileBloc(restClient: client);
    final transactionBloc =
        TransactionBloc(restClient: client, profileBloc: profileBloc);

    return MultiBlocProvider(
      providers: [
        BlocProvider<ArticleBloc>(
          create: (BuildContext ctx) => ArticleBloc(restClient: client),
        ),
        BlocProvider<ShopItemBloc>(
          create: (BuildContext ctx) => ShopItemBloc(restClient: client),
        ),
        BlocProvider<LoginBloc>(
          create: (BuildContext ctx) => LoginBloc(restClient: client),
        ),
        BlocProvider<ProfileBloc>(
          create: (BuildContext ctx) => profileBloc,
        ),
        BlocProvider<TransactionBloc>(
          create: (BuildContext ctx) => transactionBloc,
        ),
        BlocProvider<OrderBloc>(
          create: (BuildContext ctx) => OrderBloc(restClient: client),
        ),
        BlocProvider<BucketBloc>(
          create: (BuildContext ctx) => BucketBloc(restClient: client),
        ),
        BlocProvider<WishlistBloc>(
          create: (BuildContext ctx) => WishlistBloc(restClient: client),
        ),
      ],
      child: MaterialApp.router(
        title: 'Sport exchange',
        theme: mainTheme,
        routerConfig: _appRouter.config(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
