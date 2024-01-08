import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:sport_exchange/featurtes/home/widgets/category_list.dart';
import 'package:sport_exchange/featurtes/home/widgets/for_you_list.dart';
import 'package:sport_exchange/featurtes/home/widgets/promocodes.dart';
import 'package:sport_exchange/featurtes/home/widgets/search.dart';
import 'package:sport_exchange/featurtes/home/widgets/user_balance.dart';

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
