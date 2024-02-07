part of 'bucket_bloc.dart';

abstract class BucketState extends Equatable {
  const BucketState();

  @override
  List<Object> get props => [];
}

class BucketInitial extends BucketState {}

class BucketLoading extends BucketState {}

class BucketLoaded extends BucketState {
  final ContentModel<List<BucketModel>> bucket;

  const BucketLoaded(this.bucket);

  @override
  List<Object> get props => super.props..add(bucket);
}

class BucketFailure extends BucketState {
  final Object error;

  const BucketFailure(this.error);

  @override
  List<Object> get props => super.props..add(error);
}

class BucketAddLoading extends BucketState {}

class BucketAddLoaded extends BucketState {}

class BucketAddFailure extends BucketState {
  final Object error;

  const BucketAddFailure(this.error);

  @override
  List<Object> get props => super.props..add(error);
}

class BucketRemoveLoading extends BucketState {}

class BucketRemoveLoaded extends BucketState {}

class BucketRemoveFailure extends BucketState {
  final Object error;

  const BucketRemoveFailure(this.error);

  @override
  List<Object> get props => super.props..add(error);
}

class BucketClearLoading extends BucketState {}

class BucketClearLoaded extends BucketState {}

class BucketClearFailure extends BucketState {
  final Object error;

  const BucketClearFailure(this.error);

  @override
  List<Object> get props => super.props..add(error);
}
