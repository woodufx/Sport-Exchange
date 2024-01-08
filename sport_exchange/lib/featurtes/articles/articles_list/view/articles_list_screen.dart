import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ArticlesListScreen extends StatelessWidget {
  const ArticlesListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Статьи'),
    );
  }
}
