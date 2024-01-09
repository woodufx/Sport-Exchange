import "package:flutter_bloc/flutter_bloc.dart";
import 'package:flutter/material.dart';
import 'package:sport_exchange/api/api.dart';
import 'package:sport_exchange/featurtes/articles/article/bloc/article_list_bloc.dart';
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
    return BlocProvider(
      create: (context) => ArticleListBloc(restClient: initRestClient()),
      child: MaterialApp.router(
        title: 'Sport exchange',
        theme: mainTheme,
        routerConfig: _appRouter.config(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
