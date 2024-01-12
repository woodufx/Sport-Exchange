part of 'order_bloc.dart';

abstract class OrderEvent extends Equatable {
  const OrderEvent();

  @override
  List<Object> get props => [];
}

class OrderGetEvent extends OrderEvent {
  const OrderGetEvent();

  @override
  List<Object> get props => super.props..addAll([]);
}

class OrderCreateEvent extends OrderEvent {
  const OrderCreateEvent();

  @override
  List<Object> get props => super.props..addAll([]);
}