import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_exchange/api/api.dart';
import 'package:sport_exchange/api/models/content_model.dart';
import 'package:sport_exchange/api/models/user_model.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc({required this.restClient}) : super(ProfileInitial()) {
    on<ProfileGetEvent>(_onProfileGet);
    on<ProfileUpdateEvent>(_onProfileUpdate);
  }

  FutureOr<void> _onProfileGet(
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

  FutureOr<void> _onProfileUpdate(
    ProfileUpdateEvent event,
    Emitter<ProfileState> emit,
  ) async {
    try {
      emit(ProfileUpdateLoading());
      final profile = await restClient.updateProfile(event.model);
      emit(ProfileLoaded(profile));
    } catch (e) {
      emit(ProfileUpdateFailure(e));
    }
  }

  final RestClient restClient;
}
