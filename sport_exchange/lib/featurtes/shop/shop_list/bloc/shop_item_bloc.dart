import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_exchange/api/api.dart';
import 'package:sport_exchange/api/models/content_model.dart';
import 'package:sport_exchange/api/models/product_model.dart';

part 'shop_item_event.dart';
part 'shop_item_state.dart';

class ShopItemBloc extends Bloc<ShopItemEvent, ShopItemState> {
  final RestClient restClient;

  ShopItemBloc({required this.restClient}) : super(ShopItemInitial()) {
    on<ShopItemGetEvent>(_onShopItemGet);
  }

  FutureOr<void> _onShopItemGet(
    ShopItemGetEvent event,
    Emitter<ShopItemState> emit,
  ) async {
    try {
      emit(ShopItemLoading());
      final ContentModel<List<ProductModel>> products;
      products = await restClient
          .getProducts({'searchQuery': event.searchQuery.trim()});
      emit(ShopItemLoaded(products));
    } catch (e) {
      emit(ShopItemFailure(e));
    }
  }
}
