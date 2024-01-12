import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_exchange/constants/app_colors.dart';
import 'package:sport_exchange/featurtes/shop/shop_list/bloc/shop_item_bloc.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: SizedBox(
                    height: 40.0,
                    child: TextField(
                      controller: _controller,
                      style: const TextStyle(
                        fontSize: 12,
                        color: AppColors.additionalGray,
                      ),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: AppColors.primaryOrange,
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: AppColors.inputBorder,
                            )),
                        filled: true,
                        fillColor: AppColors.white,
                        hintText: 'Поиск товаров',
                        hintStyle: const TextStyle(
                            fontSize: 12,
                            color: AppColors.additionalGray,
                            fontWeight: FontWeight.w400),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 16.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  )),
            ),
            SizedBox(
              width: 40.0,
              height: 40.0,
              child: Material(
                color: AppColors.primaryOrange,
                borderRadius: BorderRadius.circular(10.0),
                child: InkWell(
                  borderRadius: BorderRadius.circular(10.0),
                  onTap: () {
                    BlocProvider.of<ShopItemBloc>(context).add(
                        ShopItemGetEvent(searchQuery: _controller.text));
                  },
                  child: const Center(
                    child: Icon(
                      Icons.search_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
