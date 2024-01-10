import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import '/featurtes/home/widgets/widget.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Search(),
          const UserBalance(),
          SizedBox(
            height: 138,
            child: Promocodes(),
          ),
          const CategoryList(),
          const ForYouList()
        ],
      ),
    );
  }
}
