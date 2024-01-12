part of 'bucket_bloc.dart';

abstract class BucketState extends Equatable {
  const BucketState();
}

class BucketInitial extends BucketState {
  @override
  List<Object> get props => [];
}
