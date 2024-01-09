import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sport_exchange/api/api.dart';
import 'package:sport_exchange/api/models/content_model.dart';
import 'package:sport_exchange/api/models/product_model.dart';

part 'shop_item_list_event.dart';

part 'shop_item_list_state.dart';

class ShopItemListBloc extends Bloc<ShopItemListEvent, ShopItemListState> {
  ShopItemListBloc({required this.restClient}) : super(ShopItemListInitial()) {
    on<ShopItemListGetEvent>(_onShopItems);
  }

  FutureOr<void> _onShopItems(
    ShopItemListGetEvent event,
    Emitter<ShopItemListState> emit,
  ) async {
    try {
      emit(ShopItemListLoading());

      final ContentModel<List<ProductModel>> products;
      if (event.searchQuery.trim().isEmpty) {
        products = await restClient.getProductsWithoutParameters();
      } else {
        products =
            await restClient.getProducts({'searchQuery': event.searchQuery});
      }

      emit(ShopItemListLoaded(products));
    } catch (e) {
      emit(ShopItemListFailure(e));
    }
  }

  final RestClient restClient;
}
