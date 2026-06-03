part of 'instagram_profile_bloc.dart';

@immutable
sealed class InstagramProfileState {}

final class InstagramProfileInitial extends InstagramProfileState {}
class InstagramProfileBlocLoading extends InstagramProfileState {}
class InstagramProfileBlocLoaded extends InstagramProfileState {
  final InstagramProfileModel profile;
  InstagramProfileBlocLoaded(this.profile);
}
class InstagramProfileBlocError extends InstagramProfileState {
  final String message;

  InstagramProfileBlocError(this.message);
}
