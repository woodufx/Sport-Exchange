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
