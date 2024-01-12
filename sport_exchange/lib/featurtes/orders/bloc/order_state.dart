part of 'order_bloc.dart';

abstract class OrderState extends Equatable {
  const OrderState();

  @override
  List<Object> get props => [];
}

final class OrderInitial extends OrderState {}

final class OrderLoading extends OrderState {}

final class OrderLoaded extends OrderState {
  final ContentModel<List<OrderModel>> orders;

  const OrderLoaded(this.orders);

  @override
  List<Object> get props => super.props..add(orders);
}

class OrderFailure extends OrderState {
  final Object error;

  const OrderFailure(this.error);

  @override
  List<Object> get props => super.props..add(error);
}

final class OrderCreateLoading extends OrderState {}

final class OrderCreateLoaded extends OrderState {
  final ContentModel<OrderModel> order;

  const OrderCreateLoaded(this.order);

  @override
  List<Object> get props => super.props..add(order);
}

class OrderCreateFailure extends OrderState {
  final Object error;

  const OrderCreateFailure(this.error);

  @override
  List<Object> get props => super.props..add(error);
}