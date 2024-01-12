part of 'shop_item_bloc.dart';

abstract class ShopItemState extends Equatable {
  const ShopItemState();

  @override
  List<Object> get props => [];
}

class ShopItemInitial extends ShopItemState {}

class ShopItemLoading extends ShopItemState {}

class ShopItemLoaded extends ShopItemState {
  final ContentModel<List<ProductModel>> products;

  const ShopItemLoaded(this.products);

  @override
  List<Object> get props => super.props..add(products);
}

class ShopItemFailure extends ShopItemState {
  final Object error;

  const ShopItemFailure(this.error);

  @override
  List<Object> get props => super.props..add(error);
}
