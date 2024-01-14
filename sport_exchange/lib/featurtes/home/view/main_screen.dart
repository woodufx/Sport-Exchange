import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_exchange/featurtes/shop-card/bloc/bucket_bloc.dart';
import 'package:sport_exchange/featurtes/wishlist/bloc/wishlist_bloc.dart';
import '/featurtes/home/widgets/widget.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<WishlistBloc>(context).add(const WishlistGetEvent());
    BlocProvider.of<BucketBloc>(context).add(const BucketGetEvent());
  }

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
