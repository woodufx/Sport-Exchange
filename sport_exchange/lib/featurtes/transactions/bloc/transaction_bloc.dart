import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sport_exchange/api/api.dart';
import 'package:sport_exchange/api/models/content_model.dart';
import 'package:sport_exchange/api/models/transaction_model.dart';
import 'package:sport_exchange/featurtes/profile/bloc/profile_bloc.dart';

part 'transaction_event.dart';
part 'transaction_state.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  final RestClient restClient;
  final ProfileBloc profileBloc;

  TransactionBloc({required this.restClient, required this.profileBloc})
      : super(TransactionInitial()) {
    on<TransactionGetEvent>(_onTransactionGet);
    on<TransactionTopUpEvent>(_onTransactionTopUpEvent);
  }

  FutureOr<void> _onTransactionGet(
    TransactionGetEvent event,
    Emitter<TransactionState> emit,
  ) async {
    try {
      emit(TransactionLoading());
      final transactions = await restClient.getTransactions();
      emit(TransactionLoaded(transactions));
    } catch (e) {
      emit(TransactionFailure(e));
    }
  }

  FutureOr<void> _onTransactionTopUpEvent(
    TransactionTopUpEvent event,
    Emitter<TransactionState> emit,
  ) async {
    try {
      emit(TransactionTopUpLoading());
      final transactionCreated = await restClient.topUp(event.model);
      emit(TransactionTopUpLoaded(transactionCreated));
    } catch (e) {
      emit(TransactionTopUpFailure(e));
    }

    add(const TransactionGetEvent());
    profileBloc.add(const ProfileGetEvent());
  }
}
