part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class Authorize extends LoginEvent {
  const Authorize({required this.login, required this.password});

  final String login;
  final String password;

  @override
  List<Object> get props => super.props..addAll([login, password]);
}
