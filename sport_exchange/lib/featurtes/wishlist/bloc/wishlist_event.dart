part of 'wishlist_bloc.dart';

abstract class WishlistEvent extends Equatable {
  const WishlistEvent();

  @override
  List<Object> get props => [];
}

class WishlistGetEvent extends WishlistEvent {
  const WishlistGetEvent();

  @override
  List<Object> get props => super.props..addAll([]);
}

class WishlistUpdateEvent extends WishlistEvent {
  final WishlistUpdateDeleteModel model;

  const WishlistUpdateEvent({required this.model});

  @override
  List<Object> get props => super.props..addAll([model]);
}

class WishlistDeleteEvent extends WishlistEvent {
  final WishlistUpdateDeleteModel model;

  const WishlistDeleteEvent({required this.model});

  @override
  List<Object> get props => super.props..addAll([model]);
}

class WishlistClearEvent extends WishlistEvent {
  const WishlistClearEvent();

  @override
  List<Object> get props => super.props..addAll([]);
}
