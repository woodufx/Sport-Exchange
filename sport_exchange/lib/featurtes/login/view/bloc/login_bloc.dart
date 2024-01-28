import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sport_exchange/api/api.dart';
import 'package:sport_exchange/api/models/content_model.dart';
import 'package:sport_exchange/api/models/token_model.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({required this.restClient}) : super(LoginInitial()) {
    on<Authorize>(_onAuthorize);
  }

  FutureOr<void> _onAuthorize(
    Authorize event,
    Emitter<LoginState> emit,
  ) async {
    try {
      emit(LoginLoading());
      final header = await restClient
          .authorize(event.login, event.password)
          .then((value) => value);
      emit(LoginSuccess(header: header));
    } catch (e) {
      emit(LoginFailure(e));
    }
  }

  final RestClient restClient;
}
