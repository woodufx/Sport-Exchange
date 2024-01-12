part of 'transaction_bloc.dart';

abstract class TransactionEvent extends Equatable {
  const TransactionEvent();

  @override
  List<Object> get props => [];
}

class TransactionGetEvent extends TransactionEvent {
  const TransactionGetEvent();

  @override
  List<Object> get props => super.props..addAll([]);
}

class TransactionTopUpEvent extends TransactionEvent {
  final TransactionCreateModel model;

  const TransactionTopUpEvent({required this.model});

  @override
  List<Object> get props => super.props..addAll([model]);
}
