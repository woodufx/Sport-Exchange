part of 'bucket_bloc.dart';

abstract class BucketEvent extends Equatable {
  const BucketEvent();

  @override
  List<Object> get props => [];
}

class BucketGetEvent extends BucketEvent {
  const BucketGetEvent();

  @override
  List<Object> get props => super.props..addAll([]);
}

class BucketUpdateEvent extends BucketEvent {
  final List<BucketUpdateModel> model;

  const BucketUpdateEvent({required this.model});

  @override
  List<Object> get props => super.props..addAll([model]);
}

class BucketDeleteEvent extends BucketEvent {
  final List<BucketDeleteModel> model;

  const BucketDeleteEvent({required this.model});

  @override
  List<Object> get props => super.props..addAll([model]);
}

class BucketClearEvent extends BucketEvent {
  const BucketClearEvent();

  @override
  List<Object> get props => super.props..addAll([]);
}
