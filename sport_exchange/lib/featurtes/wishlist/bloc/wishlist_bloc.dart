import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sport_exchange/api/api.dart';
import 'package:sport_exchange/api/models/content_model.dart';
import 'package:sport_exchange/api/models/product_model.dart';
import 'package:sport_exchange/api/models/wishlist_model.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  final RestClient restClient;

  WishlistBloc({required this.restClient}) : super(WishlistInitial()) {
    on<WishlistGetEvent>(_onWishlistGet);
    on<WishlistUpdateEvent>(_onWishlistUpdate);
    on<WishlistDeleteEvent>(_onWishlistDelete);
    on<WishlistClearEvent>(_onWishlistClear);
  }

  FutureOr<void> _onWishlistGet(
    WishlistGetEvent event,
    Emitter<WishlistState> emit,
  ) async {
    try {
      if (state is! WishlistLoaded) {
        emit(WishlistLoading());
        final bucket = await restClient.getWishlist();
        emit(WishlistLoaded(bucket));
      }
    } catch (e) {
      emit(WishlistFailure(e));
    }
  }

  FutureOr<void> _onWishlistUpdate(
    WishlistUpdateEvent event,
    Emitter<WishlistState> emit,
  ) async {
    try {
      final wishlist = await restClient.addToWishlist(event.model);
      emit(WishlistAddLoaded());
      emit(WishlistLoaded(wishlist));
    } catch (e) {
      emit(WishlistAddFailure(e));
    }
  }

  FutureOr<void> _onWishlistDelete(
    WishlistDeleteEvent event,
    Emitter<WishlistState> emit,
  ) async {
    try {
      final wishlist = await restClient.removeFromWishlist(event.model);
      emit(WishlistRemoveLoaded());
      emit(WishlistLoaded(wishlist));
    } catch (e) {
      emit(WishlistRemoveFailure(e));
    }
  }

  FutureOr<void> _onWishlistClear(
    WishlistClearEvent event,
    Emitter<WishlistState> emit,
  ) async {
    try {
      emit(WishlistClearLoading());
      await restClient.clearWishlist();
      emit(WishlistClearLoaded());
      emit(WishlistLoaded({} as ContentModel<List<ProductModel>>));
    } catch (e) {
      emit(WishlistClearFailure(e));
    }
  }
}
