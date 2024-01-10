import 'package:flutter/material.dart';
import "package:flutter_bloc/flutter_bloc.dart";
import 'package:sport_exchange/api/api.dart';
import 'package:sport_exchange/featurtes/articles/bloc/article_list_bloc.dart';
import 'package:sport_exchange/featurtes/shop/shop_list/bloc/shop_item_list_bloc.dart';
import 'package:sport_exchange/router/router.dart';
import 'package:sport_exchange/theme/theme.dart';

Future<void> main() async {
  runApp(const MyApp());
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
    final restClient = initRestClient();
    return MultiBlocProvider(
      providers: [
        BlocProvider<ArticleListBloc>(
          create: (BuildContext context) =>
              ArticleListBloc(restClient: restClient),
        ),
        BlocProvider<ShopItemListBloc>(
          create: (BuildContext context) =>
              ShopItemListBloc(restClient: restClient),
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
