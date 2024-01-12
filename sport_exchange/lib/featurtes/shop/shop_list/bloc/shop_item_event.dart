part of 'shop_item_bloc.dart';

abstract class ShopItemEvent extends Equatable {
  const ShopItemEvent();

  @override
  List<Object> get props => [];
}

class ShopItemGetEvent extends ShopItemEvent {
  final String searchQuery;

  const ShopItemGetEvent({required this.searchQuery});

  @override
  List<Object> get props => super.props..addAll([searchQuery]);
}
