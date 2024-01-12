part of 'profile_bloc.dart';

abstract class ProfileEvent extends Equatable {
  const ProfileEvent();

  @override
  List<Object> get props => [];
}

class ProfileGetEvent extends ProfileEvent {
  const ProfileGetEvent();

  @override
  List<Object> get props => super.props..addAll([]);
}

class ProfileUpdateEvent extends ProfileEvent {
  final UserUpdateModel model;

  const ProfileUpdateEvent({required this.model});

  @override
  List<Object> get props => super.props..addAll([model]);
}
