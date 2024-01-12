part of 'transaction_bloc.dart';

abstract class TransactionState extends Equatable {
  const TransactionState();

  @override
  List<Object> get props => [];
}

final class TransactionInitial extends TransactionState {}

final class TransactionLoading extends TransactionState {}

final class TransactionLoaded extends TransactionState {
  final ContentModel<List<TransactionModel>> transactions;

  const TransactionLoaded(this.transactions);

  @override
  List<Object> get props => super.props..add(transactions);
}

class TransactionFailure extends TransactionState {
  final Object error;

  const TransactionFailure(this.error);

  @override
  List<Object> get props => super.props..add(error);
}

final class TransactionTopUpLoading extends TransactionState {}

final class TransactionTopUpLoaded extends TransactionState {
  final ContentModel<TransactionModel> transactionCreated;

  const TransactionTopUpLoaded(this.transactionCreated);

  @override
  List<Object> get props => super.props..add(transactionCreated);
}

class TransactionTopUpFailure extends TransactionState {
  final Object error;

  const TransactionTopUpFailure(this.error);

  @override
  List<Object> get props => super.props..add(error);
}
