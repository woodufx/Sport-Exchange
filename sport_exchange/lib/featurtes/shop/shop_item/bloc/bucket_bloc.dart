import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sport_exchange/api/api.dart';
import 'package:sport_exchange/api/models/bucket_model.dart';
import 'package:sport_exchange/api/models/content_model.dart';

part 'bucket_event.dart';

part 'bucket_state.dart';

class BucketBloc extends Bloc<BucketEvent, BucketState> {
  final RestClient restClient;

  BucketBloc({required this.restClient}) : super(BucketInitial()) {
    on<BucketGetEvent>(_onBucketGet);
    on<BucketUpdateEvent>(_onBucketUpdate);
    on<BucketDeleteEvent>(_onBucketDelete);
    on<BucketClearEvent>(_onBucketClear);
  }

  FutureOr<void> _onBucketGet(
      BucketGetEvent event,
      Emitter<BucketState> emit,
      ) async {
    try {
      emit(BucketLoading());
      final bucket = await restClient.getBucket();
      emit(BucketLoaded(bucket));
    } catch (e) {
      emit(BucketFailure(e));
    }
  }

  FutureOr<void> _onBucketUpdate(
      BucketUpdateEvent event,
      Emitter<BucketState> emit,
      ) async {
    try {
      emit(BucketAddLoading());
      final bucket = await restClient.addToBucket(event.model);
      emit(BucketAddLoaded());
      emit(BucketLoaded(bucket));
    } catch (e) {
      emit(BucketAddFailure(e));
    }
  }

  FutureOr<void> _onBucketDelete(
      BucketDeleteEvent event,
      Emitter<BucketState> emit,
      ) async {
    try {
      emit(BucketRemoveLoading());
      final bucket = await restClient.removeFromBucket(event.model);
      emit(BucketRemoveLoaded());
      emit(BucketLoaded(bucket));
    } catch (e) {
      emit(BucketRemoveFailure(e));
    }
  }

  FutureOr<void> _onBucketClear(
      BucketClearEvent event,
      Emitter<BucketState> emit,
      ) async {
    try {
      emit(BucketClearLoading());
      await restClient.clearBucket();
      emit(BucketClearLoaded());
      final emptyBucket = ContentModel<List<BucketModel>>(content: List.empty());
      emit(BucketLoaded(emptyBucket));
    } catch (e) {
      emit(BucketClearFailure(e));
    }
  }
}
