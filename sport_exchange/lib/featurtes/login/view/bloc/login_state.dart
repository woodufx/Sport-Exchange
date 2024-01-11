part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class LoginSuccess extends LoginState {
  final ContentModel<TokenModel> header;

  const LoginSuccess({required this.header});

  @override
  List<Object> get props => super.props..add(header);
}

class LoginFailure extends LoginState {
  final Object error;

  const LoginFailure(this.error);

  @override
  List<Object> get props => super.props..add(error);
}
