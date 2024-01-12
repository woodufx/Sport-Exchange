part of 'wishlist_bloc.dart';

abstract class WishlistState extends Equatable {
  const WishlistState();

  @override
  List<Object> get props => [];
}

class WishlistInitial extends WishlistState {}

class WishlistLoading extends WishlistState {}

class WishlistLoaded extends WishlistState {
  final ContentModel<List<ProductModel>> wishlist;

  const WishlistLoaded(this.wishlist);

  @override
  List<Object> get props => super.props..add(wishlist);
}

class WishlistFailure extends WishlistState {
  final Object error;

  const WishlistFailure(this.error);

  @override
  List<Object> get props => super.props..add(error);
}

class WishlistAddLoading extends WishlistState {}

class WishlistAddLoaded extends WishlistState {}

class WishlistAddFailure extends WishlistState {
  final Object error;

  const WishlistAddFailure(this.error);

  @override
  List<Object> get props => super.props..add(error);
}

class WishlistRemoveLoading extends WishlistState {}

class WishlistRemoveLoaded extends WishlistState {}

class WishlistRemoveFailure extends WishlistState {
  final Object error;

  const WishlistRemoveFailure(this.error);

  @override
  List<Object> get props => super.props..add(error);
}

class WishlistClearLoading extends WishlistState {}

class WishlistClearLoaded extends WishlistState {}

class WishlistClearFailure extends WishlistState {
  final Object error;

  const WishlistClearFailure(this.error);

  @override
  List<Object> get props => super.props..add(error);
}
