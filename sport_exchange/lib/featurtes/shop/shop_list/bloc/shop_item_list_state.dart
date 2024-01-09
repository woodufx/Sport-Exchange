part of 'shop_item_list_bloc.dart';

abstract class ShopItemListState extends Equatable {
  const ShopItemListState();

  @override
  List<Object> get props => [];
}

class ShopItemListInitial extends ShopItemListState {}

class ShopItemListLoading extends ShopItemListState {}

class ShopItemListLoaded extends ShopItemListState {
  final ContentModel<List<ProductModel>> products;

  const ShopItemListLoaded(this.products);

  @override
  List<Object> get props => super.props..add(products);
}

class ShopItemListFailure extends ShopItemListState {
  final Object error;

  const ShopItemListFailure(this.error);

  @override
  List<Object> get props => super.props..add(error);
}