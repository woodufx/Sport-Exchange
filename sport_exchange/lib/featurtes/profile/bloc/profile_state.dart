part of 'profile_bloc.dart';

abstract class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object> get props => [];
}

final class ProfileInitial extends ProfileState {}

final class ProfileLoading extends ProfileState {}

final class ProfileLoaded extends ProfileState {
  final ContentModel<UserModel> user;

  const ProfileLoaded(this.user);

  @override
  List<Object> get props => super.props..add(user);
}

class ProfileFailure extends ProfileState {
  final Object error;

  const ProfileFailure(this.error);

  @override
  List<Object> get props => super.props..add(error);
}

final class ProfileUpdateLoading extends ProfileState {}

class ProfileUpdateFailure extends ProfileState {
  final Object error;

  const ProfileUpdateFailure(this.error);

  @override
  List<Object> get props => super.props..add(error);
}