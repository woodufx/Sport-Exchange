import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sport_exchange/api/api.dart';
import 'package:sport_exchange/api/models/content_model.dart';
import 'package:sport_exchange/api/models/order_model.dart';

part 'order_event.dart';

part 'order_state.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderBloc({required this.restClient}) : super(OrderInitial()) {
    on<OrderGetEvent>(_onOrderGet);
    on<OrderCreateEvent>(_onOrderCreate);
  }

  FutureOr<void> _onOrderGet(
    OrderGetEvent event,
    Emitter<OrderState> emit,
  ) async {
    try {
      emit(OrderLoading());
      final orders = await restClient.getOrders();
      emit(OrderLoaded(orders));
    } catch (e) {
      emit(OrderFailure(e));
    }
  }

  FutureOr<void> _onOrderCreate(
    OrderCreateEvent event,
    Emitter<OrderState> emit,
  ) async {
    try {
      emit(OrderCreateLoading());
      final order = await restClient.createOrder();
      emit(OrderCreateLoaded(order));
    } catch (e) {
      emit(OrderCreateFailure(e));
    }

    add(const OrderGetEvent());
  }

  final RestClient restClient;
}
