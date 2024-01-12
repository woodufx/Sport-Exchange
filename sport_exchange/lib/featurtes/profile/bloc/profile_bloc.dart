import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sport_exchange/api/api.dart';
import 'package:sport_exchange/api/models/content_model.dart';
import 'package:sport_exchange/api/models/user_model.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc({required this.restClient}) : super(ProfileInitial()) {
    on<ProfileGetEvent>(_onProfile);
  }

  FutureOr<void> _onProfile(
      ProfileGetEvent event,
      Emitter<ProfileState> emit,
      ) async {
    try {
      emit(ProfileLoading());
      final profile = await restClient.getProfile();
      emit(ProfileLoaded(profile));
    } catch (e) {
      emit(ProfileFailure(e));
    }
  }

  final RestClient restClient;
}
