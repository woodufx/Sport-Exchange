part of 'shop_item_list_bloc.dart';

abstract class ShopItemListEvent extends Equatable {
  const ShopItemListEvent();

  @override
  List<Object> get props => [];
}

class ShopItemListGetEvent extends ShopItemListEvent {

  final String searchQuery;

  const ShopItemListGetEvent({required this.searchQuery});

  @override
  List<Object> get props => super.props..addAll([searchQuery]);
}