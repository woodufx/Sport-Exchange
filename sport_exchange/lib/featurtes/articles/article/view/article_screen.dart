import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder(child: Text('Страница конкретной статьи'));
  }
}
